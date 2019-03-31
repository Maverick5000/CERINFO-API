class CreateSigtops < ActiveRecord::Migration[5.2]
  def change
    create_table :sigtops do |t|
      t.string :localidad_sigtop
      t.string :dewey_sigtop
      t.string :cuter_sigtop

      t.timestamps
    end
  end
end
