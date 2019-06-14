class ChangePasswordToBeString < ActiveRecord::Migration[5.2]
  def change
    change_column :usuarios, :password, :string
  end
end
