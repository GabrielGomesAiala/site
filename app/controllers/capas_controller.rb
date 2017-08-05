class CapasController < ApplicationController

  def new
  	@capa = Capa.new
  end

  def index
    @capas = Capa.all
  end

  def destroy
    @produto = Capa.find(params[:id])
    @produto.destroy
  end

  def create
    @capa = Capa.new(capa_params)
    if @capa.save
      redirect_to '/'
    else
      render 'new'
    end
  end

  private
  def capa_params
    params.require(:capa).permit(:descricao, :imagem)
  end

end
