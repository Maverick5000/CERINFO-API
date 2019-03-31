class CreateBloqueos < ActiveRecord::Migration[5.2]
  def change
    create_table :bloqueos do |t|
      t.string :fecha_bloqueo
      t.string :detalle_bloqueo
      t.float :monto_bloqueo
      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
end
