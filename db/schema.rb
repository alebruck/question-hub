# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140517171259) do

  create_table "alunos", :force => true do |t|
    t.string  "nu_inscricao"
    t.integer "nu_ano"
    t.string  "tp_escola"
    t.string  "in_tp_ensino"
    t.string  "pk_cod_entidade"
    t.string  "cod_municipio_esc"
    t.string  "no_municipio_esc"
    t.string  "uf_esc"
    t.string  "id_dependencia_adm"
    t.string  "sit_func"
    t.string  "in_presenca_cn"
    t.string  "in_presenca_ch"
    t.string  "in_presenca_lc"
    t.string  "in_presenca_mt"
    t.float   "nu_nt_cn"
    t.float   "nu_nt_ch"
    t.float   "nu_nt_lc"
    t.float   "nu_nt_mt"
    t.string  "tx_respostas_cn"
    t.string  "tx_respostas_ch"
    t.string  "tx_respostas_lc"
    t.string  "tx_respostas_mt"
    t.string  "id_prova_cn"
    t.string  "id_prova_ch"
    t.string  "id_prova_lc"
    t.string  "id_prova_mt"
    t.string  "tp_lingua"
    t.string  "ds_gabarito_cn"
    t.string  "ds_gabarito_ch"
    t.string  "ds_gabarito_lc"
    t.string  "ds_gabarito_mt"
    t.string  "in_status_redacao"
    t.float   "nu_nota_comp1"
    t.float   "nu_nota_comp2"
    t.float   "nu_nota_comp3"
    t.float   "nu_nota_comp4"
    t.float   "nu_nota_comp5"
    t.float   "nu_nota_redacao"
  end

  create_table "escolas", :force => true do |t|
    t.string "pk_cod_entidade"
    t.string "in_tp_ensino"
    t.string "cidade"
    t.string "estado"
    t.string "endereco"
    t.string "telefone"
    t.string "email"
    t.float  "presen_cien_nat_2012"
    t.float  "presen_cien_hum_2012"
    t.float  "presen_lingua_cod_2012"
    t.float  "presen_matematica_2012"
    t.float  "presen_redacao_2012"
    t.float  "presen_cien_nat_2011"
    t.float  "presen_cien_hum_2011"
    t.float  "presen_lingua_cod_2011"
    t.float  "presen_matematica_2011"
    t.float  "presen_redacao_2011"
    t.float  "media_cien_nat_2012"
    t.float  "media_cien_hum_2012"
    t.float  "media_lingua_cod_2012"
    t.float  "media_matematica_2012"
    t.float  "media_redacao_2012"
    t.float  "media_cien_nat_2011"
    t.float  "media_cien_hum_2011"
    t.float  "media_lingua_cod_2011"
    t.float  "media_matematica_2011"
    t.float  "media_redacao_2011"
  end

end
