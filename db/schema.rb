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

ActiveRecord::Schema.define(:version => 20120114183409) do

  create_table "administradors", :force => true do |t|
    t.integer  "usuario_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cita", :force => true do |t|
    t.integer  "cita_id"
    t.integer  "paciente_id"
    t.integer  "medico_id"
    t.integer  "tipo_paciente"
    t.integer  "frecuentacion_inst"
    t.integer  "frecuentacion_serv"
    t.integer  "tipo_atencion"
    t.string   "atencion_por"
    t.string   "area_referencia"
    t.date     "fecha"
    t.datetime "hora"
    t.string   "informe_medico"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "especialidads", :force => true do |t|
    t.integer  "codigo"
    t.string   "nombre"
    t.integer  "servicio_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "historia_medicas", :force => true do |t|
    t.integer  "numero_expediente"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "medicos", :force => true do |t|
    t.integer  "usuario_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pacientes", :force => true do |t|
    t.integer  "historia_medica_id"
    t.integer  "persona_id"
    t.date     "fecha_nacimiento"
    t.string   "lugar_nacimiento"
    t.string   "nombre_padre"
    t.string   "nombre_madre"
    t.string   "seguro_social"
    t.string   "provincia"
    t.string   "distrito"
    t.string   "corregimiento"
    t.string   "nombre_urgencias"
    t.string   "parentesco"
    t.integer  "telefonourgencias"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "personas", :force => true do |t|
    t.integer  "persona_id"
    t.string   "primer_nombre"
    t.string   "segundo_nombre"
    t.string   "primer_apellido"
    t.string   "segundo_apellido"
    t.string   "sexo"
    t.integer  "telefono"
    t.string   "direccion"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "secretaria", :force => true do |t|
    t.integer  "usuario_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "servicios", :force => true do |t|
    t.integer  "codigo"
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "taquilleros", :force => true do |t|
    t.integer  "usuario_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "usuarios", :force => true do |t|
    t.string   "tipo_profesional"
    t.string   "codigo_profesional"
    t.string   "nombre_usuario"
    t.string   "contrasena"
    t.integer  "persona_id"
    t.integer  "servicio_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end
