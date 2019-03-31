class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      t.string :significado_material
      t.string :abreviatura_material

      t.timestamps
    end
  end
end
