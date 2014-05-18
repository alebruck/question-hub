class UpdateEvents < ActiveRecord::Migration
  def up

    add_column :eventos, :media_aplicada, :string

    Evento.find_in_batches do |eventos|
      eventos.each do |evento|
        if evento.tipo == 'presenca'
          case evento.tipo_indice
            when 2
              evento.update_attributes({media_aplicada: 'presen_cien_nat_2012'})
            when 1
              evento.update_attributes({media_aplicada: 'presen_cien_hum_2012'})
            when 3
              evento.update_attributes({media_aplicada: 'presen_lingua_cod_2012'})
            when 4
              evento.update_attributes({media_aplicada: 'presen_matematica_2012'})
            else
              evento.update_attributes({media_aplicada: 'presen_redacao_2012'})
          end
        elsif evento.tipo == 'nota'
          case evento.tipo_indice
            when 2
              evento.update_attributes({media_aplicada: 'media_cien_nat_2012'})
            when 1
              evento.update_attributes({media_aplicada: 'media_cien_hum_2012'})
            when 3
              evento.update_attributes({media_aplicada: 'media_lingua_cod_2012'})
            when 4
              evento.update_attributes({media_aplicada: 'media_matematica_2012'})
            else
              evento.update_attributes({media_aplicada: 'media_redacao_2012'})
          end
        end
      end
    end

  end

  def down
  end
end
