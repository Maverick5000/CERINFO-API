class CreateIdiomas < ActiveRecord::Migration[5.2]
  def change
    create_table :idiomas do |t|
      t.string :significado_idioma
      t.string :abreviatura_idioma

      t.timestamps
    end
  end
end
