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


end
