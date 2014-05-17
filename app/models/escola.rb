class Escola < ActiveRecord::Base

  attr_accessible :pk_cod_entidade, :cidade, :estado, :endereco, :telefone, :email, :presen_cien_nat_2012,
                  :presen_cien_hum_2012, :presen_lingua_cod_2012, :presen_matematica_2012, :presen_redacao_2012,
                  :presen_cien_nat_2011, :presen_cien_hum_2011, :presen_lingua_cod_2011, :presen_matematica_2011,
                  :presen_redacao_2011, :media_cien_nat_2012, :media_cien_hum_2012, :media_lingua_cod_2012,
                  :media_matematica_2012, :media_redacao_2012, :media_cien_nat_2011, :media_cien_hum_2011, :media_lingua_cod_2011,
                  :media_matematica_2011, :media_redacao_2011, :nome, :rede, :regiao, :nr_endereco, :complemento_endereco,
                  :bairro, :cep, :ddd, :situacao_funcionamento
end
