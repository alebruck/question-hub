# -*- encoding : utf-8 -*-
class Evento < ActiveRecord::Base
  attr_accessible :escola_id, :tipo, :ano, :tipo_indice, :media_aplicada

  belongs_to :escola


  def media
    value = self.escola.send(self.media_aplicada).to_i
    case self.media_aplicada
    when 'media_cien_nat_2012', 'media_cien_hum_2012', 'media_lingua_cod_2012', 'media_matematica_2012', 'media_redacao_2012'
      return (value/100).to_i
    else
      return value
    end
  end


  def titulo

    case self.media_aplicada
      when 'media_cien_nat_2012'
        return 'Média geral da prova de Ciências da Natureza'
      when 'media_cien_hum_2012'
        return 'Média geral da prova de Ciências Humanas'
      when 'media_lingua_cod_2012'
        return 'Média geral da prova de Linguagens e Códigos'
      when 'media_matematica_2012'
        return 'Média geral da prova de Matemática'
      when 'media_redacao_2012'
        return 'Média geral da prova de redação'
      when 'presen_cien_nat_2012'
        return 'Presença na prova objetiva de Ciências da Natureza'
      when 'presen_cien_hum_2012'
        return 'Presença na prova objetiva de Ciências Humanas'
      when 'presen_lingua_cod_2012'
        return 'Presença na prova objetiva de Linguagens e Códigos'
      when 'presen_matematica_2012'
        return 'Presença na prova objetiva de Matemática'
      when 'presen_redacao_2012'
        return 'Percentual de presença na redação'
      else
        nil
    end

  end




end
