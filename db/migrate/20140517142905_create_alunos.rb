class CreateAlunos < ActiveRecord::Migration
  def change
    create_table :alunos do |t|
      t.column :nu_inscricao, :string
      t.column :nu_ano, :integer
      t.column :tp_escola, :string
      t.column :in_tp_ensino, :string
      t.column :pk_cod_entidade, :string
      t.column :cod_municipio_esc, :string
      t.column :no_municipio_esc, :string
      t.column :uf_esc, :string
      t.column :id_dependencia_adm, :string
      t.column :sit_func, :string
      t.column :in_presenca_cn, :string
      t.column :in_presenca_ch, :string
      t.column :in_presenca_lc, :string
      t.column :in_presenca_mt, :string
      t.column :nu_nt_cn, :float
      t.column :nu_nt_ch, :float
      t.column :nu_nt_lc, :float
      t.column :nu_nt_mt, :float
      t.column :tx_respostas_cn, :string
      t.column :tx_respostas_ch, :string
      t.column :tx_respostas_lc, :string
      t.column :tx_respostas_mt, :string
      t.column :id_prova_cn, :string
      t.column :id_prova_ch, :string
      t.column :id_prova_lc, :string
      t.column :id_prova_mt, :string
      t.column :tp_lingua, :string
      t.column :ds_gabarito_cn, :string
      t.column :ds_gabarito_ch, :string
      t.column :ds_gabarito_lc, :string
      t.column :ds_gabarito_mt, :string
      t.column :in_status_redacao, :string
      t.column :nu_nota_comp1, :float
      t.column :nu_nota_comp2, :float
      t.column :nu_nota_comp3, :float
      t.column :nu_nota_comp4, :float
      t.column :nu_nota_comp5, :float
      t.column :nu_nota_redacao, :float
    end
  end
end
