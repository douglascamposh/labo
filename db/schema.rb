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

ActiveRecord::Schema.define(version: 20140716235959) do

  create_table "assistances", force: true do |t|
    t.integer  "user_id"
    t.datetime "salida"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "entrada"
  end

  add_index "assistances", ["user_id"], name: "index_assistances_on_user_id"

  create_table "canals", force: true do |t|
    t.string   "tamanio"
    t.string   "tipo"
    t.integer  "cantidad"
    t.float    "precio"
    t.float    "preciof"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contracts", force: true do |t|
    t.string   "nombre"
    t.string   "telefono"
    t.string   "celular"
    t.string   "acontecimiento"
    t.datetime "fecha"
    t.text     "direccion"
    t.text     "observacion"
    t.integer  "fotos"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "video"
    t.integer  "acuenta"
    t.integer  "saldo"
    t.integer  "total"
    t.integer  "user_id"
  end

  add_index "contracts", ["user_id"], name: "index_contracts_on_user_id"

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

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "nombre"
    t.integer  "telefono"
    t.string   "direccion"
    t.date     "fecha"
    t.integer  "acuenta"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ci"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "venta", force: true do |t|
    t.string   "observacion"
    t.integer  "cantidad"
    t.boolean  "aficionado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
