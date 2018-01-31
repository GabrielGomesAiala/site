class ProdutosController < ApplicationController

  def index
    @produtos = Produto.all.paginate(page:params[:page],per_page:12)
    @items = Produto.distinct.pluck(:tipo).uniq
  end

  def itens
    @produtos= Produto.where(tipo: params[:tipo]).paginate(page:params[:page],per_page:12)
    @items = Produto.distinct.pluck(:tipo).uniq
  end

  def show
    @produto = Produto.find(@)
    @fotos = @produto.fotos
  end

  def new
    @produto = Produto.new
  end

  def create
    @produto = Produto.new(produto_params)
    if @produto.save
      redirect_to '/produtos'
    else
      render 'new'
    end
  end
  
   def update  
    @produto = Produto.find(params[:id])
    if @produto.update(produto_params)
      redirect_to '/produtos'
    else
      render 'new'
    end
  end
  
  
  
  def edit
    @produto = Produto.find(params[:id])
  end

  def destroy
    @produto = Produto.find(params[:id])
    @produto.destroy
    redirect_to '/produtos'
  end

  private
  def produto_params
    params.require(:produto).permit(:nome, :descricao, :imagem, :tipo, :destaque)
  end
  
  

end
class Summoner < ApplicationRecord
  
  require 'rest-client'
  require 'json'
  
  def self.returnapi (reg, nome)
    url = 'https://'+reg+'.api.riotgames.com/lol/summoner/v3/summoners/by-name/'+nome+'?api_key=RGAPI-55e8092c-de1d-4ab5-9ffb-f6868bc4691a'
    
    
    response = RestClient.get(url)
    JSON.parse(response)

    
  end  
  
end


  def index
    @summoner = Summoner.new
  end
  
  def geral
    @summoner = Summoner.returnapi(params[:rg], params[:name])
  end
  


    get '/summoner' => 'summoners#index'
  get '/summoner/geral/:rg/:name' => 'summoners#geral'
  


  gem 'coffee-rails', '~> 4.2'

gem 'rest-client'