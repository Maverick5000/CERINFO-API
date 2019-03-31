class CreateLibros < ActiveRecord::Migration[5.2]
  def change
    create_table :libros do |t|
      t.string :titulo_libro
      t.string :tomo_libro
      t.string :area_libro
      t.string :edicion_libro
      t.string :ano_libro
      t.string :lugar_publicacion_libro
      t.string :ano_publicacion_libro
      t.references :autor, foreign_key: true
      t.references :genero, foreign_key: true
      t.references :idioma, foreign_key: true
      t.references :material, foreign_key: true
      t.references :sigtop, foreign_key: true
      t.references :editorial, foreign_key: true

      t.timestamps
    end
  end
end
