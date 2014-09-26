class AddPublicToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :public, :string
  end
end
