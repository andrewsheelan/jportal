class AddColumnsToJobapplications < ActiveRecord::Migration
  def change
    add_column :jobapplications, :job_ID, :string
    add_column :jobapplications, :emp_name, :string
    add_column :jobapplications, :email, :string
    add_column :jobapplications, :status, :string
  end
end
