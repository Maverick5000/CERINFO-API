class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :nombre_usuario
      t.string :paterno_usuario
      t.string :materno_usuario
      t.string :registro_usuario
      t.string :tipo_usuario

      t.timestamps
    end
  end
end
