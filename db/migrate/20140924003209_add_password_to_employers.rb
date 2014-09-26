class AddPasswordToEmployers < ActiveRecord::Migration
  def change
    add_column :employers, :encrypted_password, :string
  end
end
