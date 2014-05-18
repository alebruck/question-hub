class EscolasController < ApplicationController
  layout "escola"
  
  def show
    @escola = Escola.where(:pk_cod_entidade => params[:id]).first
  end

  def index
    if params[:nome].to_s.present?
      @escolas =Escola.where(["nome like ?", "%#{params[:nome].upcase}%"]).order("nome ASC").paginate(:page => params[:page], :per_page => 30)
    else
      @escolas =Escola.order("nome ASC").paginate(:page => params[:page], :per_page => 30)
    end
  end
end
