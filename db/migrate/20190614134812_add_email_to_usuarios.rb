class AddEmailToUsuarios < ActiveRecord::Migration[5.2]
  def change
    add_column :usuarios, :email, :string
  end
end
