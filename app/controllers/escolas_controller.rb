class EscolasController < ApplicationController
  layout "escola"
  
  def show
    @escola = Escola.where(:pk_cod_entidade => params[:id]).first
  end
end
