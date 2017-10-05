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
    @produto = Produto.find(params[:id])
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


  def destroy
    @produto = Produto.find(params[:id])
    @produto.destroy
    redirect_to '/produtos'
  end

  private
  def produto_params
    params.require(:produto).permit(:nome, :descricao, :imagem, :tipo)
  end

end
