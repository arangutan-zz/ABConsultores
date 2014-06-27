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

ActiveRecord::Schema.define(version: 20140627211643) do

  create_table "compromises", force: true do |t|
    t.date     "fecha_inicial"
    t.string   "correo"
    t.date     "fecha_limite"
    t.string   "compromisos"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "stakeholder_id"
  end

  create_table "empresas", force: true do |t|
    t.string   "nombre_comercial"
    t.string   "razon_social"
    t.string   "nit"
    t.string   "representante_legal"
    t.string   "nombre_contacto"
    t.string   "email_contacto"
    t.string   "telefono_contacto"
    t.string   "direccion_contacto"
    t.string   "ciudad"
    t.string   "pais"
    t.string   "pagina_web"
    t.string   "imagen"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "fecha_vencimiento"
    t.boolean  "habilidato"
  end

  create_table "entities", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "influences", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "influencestakeholders", force: true do |t|
    t.string   "stakeholder_id"
    t.string   "influence_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interests", force: true do |t|
    t.string   "tema"
    t.string   "informacion"
    t.string   "imagen"
    t.string   "stakeholder_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mettings", force: true do |t|
    t.string   "tema"
    t.date     "fecha"
    t.string   "asistentes"
    t.text     "resumen",        limit: 255
    t.string   "stakeholder_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relevances", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relevancestakeholders", force: true do |t|
    t.string   "stakeholder_id"
    t.string   "relevance_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stakeholders", force: true do |t|
    t.string   "imagen"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "cargo"
    t.string   "movimiento_politico"
    t.string   "pais"
    t.string   "departamento"
    t.string   "ciudad"
    t.string   "impacto"
    t.string   "perfil"
    t.string   "disposicion"
    t.string   "expectativas"
    t.string   "dimension"
    t.string   "dependencia"
    t.string   "necesidades_logro"
    t.string   "necesidades_poder"
    t.string   "necesidades_afiliacion"
    t.integer  "empresa_id",             limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "entity_id"
    t.string   "entidad"
  end

  create_table "temasregulatorios", force: true do |t|
    t.string   "titulo"
    t.text     "resumen"
    t.string   "imagen"
    t.string   "stakeholder_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.string   "cargo"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "telefono"
    t.string   "empresa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "rol"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
