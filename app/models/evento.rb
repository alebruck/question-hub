class Evento < ActiveRecord::Base
  attr_accessible :escola_id, :tipo, :ano, :tipo_indice, :media_aplicada

  belongs_to :escola

end
