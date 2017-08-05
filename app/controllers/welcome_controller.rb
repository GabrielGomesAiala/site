class WelcomeController < ApplicationController
  def index
    @capas = Capa.all
  end
end
