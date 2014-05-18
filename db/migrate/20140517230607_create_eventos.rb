class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.integer :escola_id
      t.string :tipo
      t.integer :ano
      t.timestamps
    end

    add_index :eventos, :escola_id
    add_index :eventos, :tipo
    add_index :escolas, :nome
    add_index :escolas, :cidade
    add_index :escolas, :estado
  end
end
