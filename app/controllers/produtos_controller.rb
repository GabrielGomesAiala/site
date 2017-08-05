class ProdutosController < ApplicationController

  def index
    @produtos = Produto.all
  end

  def admin
    @produtos = Produto.all
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
      redirect_to '/admin/produtos'
    else
      render 'new'
    end
  end


  def destroy
    @produto = Produto.find(params[:id])
    @produto.destroy
  end

  private
  def produto_params
    params.require(:produto).permit(:nome, :descricao, :imagem, :tipo)
  end

end
