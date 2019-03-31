class CreatePrestamos < ActiveRecord::Migration[5.2]
  def change
    create_table :prestamos do |t|
      t.string :fecha_devolucion
      t.string :fecha_prestamo
      t.string :dias_prestados
      t.references :libro, foreign_key: true
      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
end
