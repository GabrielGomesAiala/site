class QuemsomosController < ApplicationController
  
  def index
	  @destaque = Produto.where(destaque: 't')  
  end
  
end
