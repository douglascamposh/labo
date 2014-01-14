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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140112022013) do

  create_table "canals", force: true do |t|
    t.string   "tamanio"
    t.string   "tipo"
    t.integer  "cantidad"
    t.float    "precio"
    t.float    "preciof"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sale_id"
  end

  add_index "canals", ["sale_id"], name: "index_canals_on_sale_id"

  create_table "sales", force: true do |t|
    t.string   "observacion"
    t.integer  "cantidad"
    t.boolean  "aficionado"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "canal_id"
    t.integer  "sobre"
    t.float    "acuenta"
    t.float    "saldo"
    t.float    "total"
    t.string   "nombre"
  end

  add_index "sales", ["canal_id"], name: "index_sales_on_canal_id"

  create_table "venta", force: true do |t|
    t.string   "observacion"
    t.integer  "cantidad"
    t.boolean  "aficionado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
