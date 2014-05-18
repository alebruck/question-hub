class ProvaController < ApplicationController

  def show

    @questoes = []
    url = URI.parse("http://ec2-54-207-247-209.sa-east-1.compute.amazonaws.com")
    res = Net::HTTP.start(url.host, url.port) do |http|
      http.get("/perguntas/questoesarea.php?idarea=#{params[:id]}")
    end


    @questoes = JSON.parse res.body[1..(res.body.length-3)].encode("iso-8859-1").force_encoding("utf-8")
    @questoes_ids = @questoes.map{|q| {id: q['id'], idarea: q['idarea'], enunciado: q['enunciado']}}


  end
end