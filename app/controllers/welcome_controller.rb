class WelcomeController < ApplicationController
  def index
    @capas = Capa.all
	@destaque = Produto.limit(3).order("RANDOM()")  
  end
end
