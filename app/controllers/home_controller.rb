class HomeController < ApplicationController
  def index
    @escolas = Escola.limit(3);
  end
end
