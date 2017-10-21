class WelcomeController < ApplicationController
  def index
    @capas = Capa.all
	@destaque = Produto.where(destaque: 't')  
  end
end
