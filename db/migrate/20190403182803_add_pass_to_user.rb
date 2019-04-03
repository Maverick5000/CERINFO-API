class AddPassToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :usuarios, :password, :integer
  end
end
