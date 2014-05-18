class PopulateEventos < ActiveRecord::Migration
  def up

    add_column :eventos, :tipo_indice, :integer

    Escola.find_in_batches do |escolas|
      escolas.each do |escola|
        { presen_cien_nat_2012: 2, presen_cien_hum_2012: 1, presen_lingua_cod_2012: 3, presen_matematica_2012: 4,
          presen_redacao_2012: nil, media_cien_nat_2012: 2, media_cien_hum_2012: 1, media_lingua_cod_2012: 3,
          media_matematica_2012: 4, media_redacao_2012: nil }.each do |k, v|

          if ['presen_cien_nat_2012', 'presen_cien_hum_2012', 'presen_lingua_cod_2012', 'presen_matematica_2012', 'presen_redacao_2012'].include?(k.to_s)
            tipo = 'presenca'
          elsif ['media_cien_nat_2012', 'media_cien_hum_2012', 'media_lingua_cod_2012', 'media_matematica_2012', 'media_redacao_2012'].include?(k.to_s)
            tipo = 'nota'
          end

          e = Evento.create!({escola_id: escola.id, tipo: tipo, ano: 2012, tipo_indice: v})
          puts e.escola_id
        end
      end
    end

  end

  def down
  end
end
