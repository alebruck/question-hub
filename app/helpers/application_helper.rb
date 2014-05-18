# -*- encoding : utf-8 -*-
module ApplicationHelper

  def tipo_descricao(desc)
    case desc.to_i
      when 1
        return 'Prova Ciências da Natureza - ENEM 2012'
      when 2
        return 'Prova Ciências Humanas - ENEM 2012'
      when 3
        return 'Prova Linguagens e Códigos - ENEM 2012'
      when 4
        return 'Prova Matemática - ENEM 2012'
    end
  end
end