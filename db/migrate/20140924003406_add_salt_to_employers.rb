class AddSaltToEmployers < ActiveRecord::Migration
  def change
    add_column :employers, :salt, :string
  end
end
