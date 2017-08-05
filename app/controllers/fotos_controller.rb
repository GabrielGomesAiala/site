class FotosController < ApplicationController

  @@id

  def destroy
    @foto = Foto.find(params[:id])
    @foto.destroy
  end

  def new
    @image = Foto.new
    @@id = params[:id]
  end

  def show
    @produto = Produto.find(params[:id])
    @image = @produto.images
  end

  def create
    @produto = Produto.find(@@id)
    @image = @produto.fotos.create(foto_params)
    if @image.save
      redirect_to '/admin/produtos'
    else
      render 'new'
    end
  end

  private
  def foto_params
    params.require(:foto).permit(:imagem)
  end





end
