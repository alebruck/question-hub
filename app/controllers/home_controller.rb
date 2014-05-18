class HomeController < ApplicationController
  def index
    @escolas = Escola.order("RANDOM()").limit(3);
  end
end
