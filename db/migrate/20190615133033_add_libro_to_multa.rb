class AddLibroToMulta < ActiveRecord::Migration[5.2]
  def change
    add_reference :multa, :libro, foreign_key: true
  end
end
