# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_17_012202) do

  create_table "caixas", force: :cascade do |t|
    t.date "data"
    t.float "valor_inicial"
    t.float "valor_total"
    t.float "valor_arrecadado"
    t.boolean "aberto"
    t.integer "usuario_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["usuario_id"], name: "index_caixas_on_usuario_id"
  end

  create_table "estoques", force: :cascade do |t|
    t.string "nome"
    t.string "data_criacao"
    t.integer "produtos_id", null: false
    t.string "categoria"
    t.float "valor_total"
    t.integer "peso"
    t.string "data_validade"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["produtos_id"], name: "index_estoques_on_produtos_id"
  end

  create_table "produto_vendas", force: :cascade do |t|
    t.integer "produto_id", null: false
    t.integer "venda_id", null: false
    t.float "qtd_produtos"
    t.float "valor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["produto_id"], name: "index_produto_vendas_on_produto_id"
    t.index ["venda_id"], name: "index_produto_vendas_on_venda_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string "nome"
    t.string "categoria"
    t.decimal "qtd_estoque"
    t.float "preco"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.string "login"
    t.string "senha"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vendas", force: :cascade do |t|
    t.float "valor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "caixas", "usuarios"
  add_foreign_key "estoques", "produtos", column: "produtos_id"
  add_foreign_key "produto_vendas", "produtos"
  add_foreign_key "produto_vendas", "vendas"
end
