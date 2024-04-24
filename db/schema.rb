# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_01_30_130010) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exploracion_fisicas", force: :cascade do |t|
    t.bigint "hoja_paciente_id", null: false
    t.string "patron_movimiento"
    t.integer "evaluacion_patron_funcional"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "patron_movimiento1"
    t.string "patron_movimiento2"
    t.string "patron_movimiento3"
    t.string "patron_movimiento4"
    t.string "patron_movimiento5"
    t.string "patron_movimiento6"
    t.string "patron_movimiento7"
    t.string "patron_movimiento8"
    t.string "patron_movimiento9"
    t.string "patron_movimiento10"
    t.string "patron_movimiento11"
    t.string "patron_movimiento12"
    t.string "patron_movimiento13"
    t.string "patron_movimiento14"
    t.integer "evaluacion_patron_funcional1"
    t.integer "evaluacion_patron_funcional2"
    t.integer "evaluacion_patron_funcional3"
    t.integer "evaluacion_patron_funcional4"
    t.integer "evaluacion_patron_funcional5"
    t.integer "evaluacion_patron_funcional6"
    t.integer "evaluacion_patron_funcional7"
    t.integer "evaluacion_patron_funcional8"
    t.integer "evaluacion_patron_funcional9"
    t.integer "evaluacion_patron_funcional10"
    t.integer "evaluacion_patron_funcional11"
    t.integer "evaluacion_patron_funcional12"
    t.integer "evaluacion_patron_funcional13"
    t.integer "evaluacion_patron_funcional14"
    t.index ["hoja_paciente_id"], name: "index_exploracion_fisicas_on_hoja_paciente_id"
  end

  create_table "hoja_pacientes", force: :cascade do |t|
    t.bigint "numero_identificacion_paciente"
    t.date "fecha"
    t.string "cif"
    t.string "objetivos_terapeuticos"
    t.bigint "duracion_plan_trabajo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pacientes", force: :cascade do |t|
    t.bigint "numero_identificacion"
    t.string "nombres"
    t.string "apellidos"
    t.bigint "telefono"
    t.string "correo_electronico"
    t.string "contraseña"
    t.integer "edad"
    t.string "tipo_sangre"
    t.string "eps"
    t.string "ocupacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "therapist", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_therapist_on_email", unique: true
    t.index ["reset_password_token"], name: "index_therapist_on_reset_password_token", unique: true
  end

  create_table "therapists", force: :cascade do |t|
    t.bigint "numero_identificacion"
    t.string "nombres"
    t.string "apellidos"
    t.bigint "telefono"
    t.string "correo_electronico"
    t.string "contraseña"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_therapists_on_email", unique: true
    t.index ["reset_password_token"], name: "index_therapists_on_reset_password_token", unique: true
  end

  create_table "videos", force: :cascade do |t|
    t.bigint "hoja_paciente_id", null: false
    t.string "nombre_video"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hoja_paciente_id"], name: "index_videos_on_hoja_paciente_id"
  end

  add_foreign_key "exploracion_fisicas", "hoja_pacientes"
  add_foreign_key "videos", "hoja_pacientes"
end
