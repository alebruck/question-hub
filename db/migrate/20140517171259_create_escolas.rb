class CreateEscolas < ActiveRecord::Migration
  def change
    create_table :escolas do |t|
      t.column :pk_cod_entidade, :string
      t.column :in_tp_ensino, :string
      t.column :cidade, :string
      t.column :estado, :string
      t.column :endereco, :string
      t.column :telefone, :string
      t.column :email, :string

      t.column :presen_cien_nat_2012, :float
      t.column :presen_cien_hum_2012, :float
      t.column :presen_lingua_cod_2012, :float
      t.column :presen_matematica_2012, :float
      t.column :presen_redacao_2012, :float

      t.column :presen_cien_nat_2011, :float
      t.column :presen_cien_hum_2011, :float
      t.column :presen_lingua_cod_2011, :float
      t.column :presen_matematica_2011, :float
      t.column :presen_redacao_2011, :float

      t.column :media_cien_nat_2012, :float
      t.column :media_cien_hum_2012, :float
      t.column :media_lingua_cod_2012, :float
      t.column :media_matematica_2012, :float
      t.column :media_redacao_2012, :float

      t.column :media_cien_nat_2011, :float
      t.column :media_cien_hum_2011, :float
      t.column :media_lingua_cod_2011, :float
      t.column :media_matematica_2011, :float
      t.column :media_redacao_2011, :float    
    end
  end
end
