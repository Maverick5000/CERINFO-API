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

ActiveRecord::Schema.define(version: 2019_03_31_235025) do

  create_table "autors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre_autor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bloqueos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "fecha_bloqueo"
    t.string "detalle_bloqueo"
    t.float "monto_bloqueo"
    t.bigint "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_bloqueos_on_usuario_id"
  end

  create_table "editorials", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre_editorial"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "generos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre_genero"
    t.string "abreviatura_genero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "idiomas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "significado_idioma"
    t.string "abreviatura_idioma"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "libros", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "titulo_libro"
    t.string "tomo_libro"
    t.string "area_libro"
    t.string "edicion_libro"
    t.string "ano_libro"
    t.string "lugar_publicacion_libro"
    t.string "ano_publicacion_libro"
    t.bigint "autor_id"
    t.bigint "genero_id"
    t.bigint "idioma_id"
    t.bigint "material_id"
    t.bigint "sigtop_id"
    t.bigint "editorial_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["autor_id"], name: "index_libros_on_autor_id"
    t.index ["editorial_id"], name: "index_libros_on_editorial_id"
    t.index ["genero_id"], name: "index_libros_on_genero_id"
    t.index ["idioma_id"], name: "index_libros_on_idioma_id"
    t.index ["material_id"], name: "index_libros_on_material_id"
    t.index ["sigtop_id"], name: "index_libros_on_sigtop_id"
  end

  create_table "materials", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "significado_material"
    t.string "abreviatura_material"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "multa", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "estado_multa"
    t.string "detalle_multa"
    t.float "monto_multa"
    t.bigint "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_multa_on_usuario_id"
  end

  create_table "prestamos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "fecha_devolucion"
    t.string "fecha_prestamo"
    t.string "dias_prestados"
    t.bigint "libro_id"
    t.bigint "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["libro_id"], name: "index_prestamos_on_libro_id"
    t.index ["usuario_id"], name: "index_prestamos_on_usuario_id"
  end

  create_table "sigtops", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "localidad_sigtop"
    t.string "dewey_sigtop"
    t.string "cuter_sigtop"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre_usuario"
    t.string "paterno_usuario"
    t.string "materno_usuario"
    t.string "registro_usuario"
    t.string "tipo_usuario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "versions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "item_type", limit: 191, null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 4294967295
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

  add_foreign_key "bloqueos", "usuarios"
  add_foreign_key "libros", "autors"
  add_foreign_key "libros", "editorials"
  add_foreign_key "libros", "generos"
  add_foreign_key "libros", "idiomas"
  add_foreign_key "libros", "materials"
  add_foreign_key "libros", "sigtops"
  add_foreign_key "multa", "usuarios"
  add_foreign_key "prestamos", "libros"
  add_foreign_key "prestamos", "usuarios"
end
