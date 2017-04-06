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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170406003102) do

  create_table "animais", force: :cascade do |t|
    t.string   "nome"
    t.string   "sexo"
    t.string   "pelagem"
    t.date     "data_nascimento"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "nome"
    t.string   "rg"
    t.string   "cpf"
    t.string   "endereco"
    t.string   "cidade"
    t.string   "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parcelas", force: :cascade do |t|
    t.integer  "venda_id"
    t.integer  "numero"
    t.date     "data_vencimento"
    t.date     "data_pagamento"
    t.float    "valor"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.float    "valor_pago"
    t.integer  "status"
    t.index ["venda_id"], name: "index_parcelas_on_venda_id"
  end

  create_table "tipo_vendas", force: :cascade do |t|
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vendas", force: :cascade do |t|
    t.integer  "tipo_venda_id"
    t.integer  "cliente_id"
    t.integer  "animal_id"
    t.float    "valor"
    t.integer  "n_parcelas"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.date     "data_primeiro_vencimento"
    t.index ["animal_id"], name: "index_vendas_on_animal_id"
    t.index ["cliente_id"], name: "index_vendas_on_cliente_id"
    t.index ["tipo_venda_id"], name: "index_vendas_on_tipo_venda_id"
  end

end
