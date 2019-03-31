class CreateGeneros < ActiveRecord::Migration[5.2]
  def change
    create_table :generos do |t|
      t.string :nombre_genero
      t.string :abreviatura_genero

      t.timestamps
    end
  end
end
