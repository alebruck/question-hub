# -*- encoding : utf-8 -*-
module ApplicationHelper

  def tipo_descricao(desc)
    case desc.to_i
      when 1
        return 'Ciências da Natureza'
      when 2
        return 'Ciências Humanas'
      when 3
        return 'Linguagens e Códigos'
      when 4
        return 'Matemática'
    end
  end
end