class CreateMulta < ActiveRecord::Migration[5.2]
  def change
    create_table :multa do |t|
      t.string :estado_multa
      t.string :detalle_multa
      t.float :monto_multa
      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
end
