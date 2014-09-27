class AddColumnToJobapplications < ActiveRecord::Migration
  def change
    add_column :jobapplications, :tags, :string
  end
end
