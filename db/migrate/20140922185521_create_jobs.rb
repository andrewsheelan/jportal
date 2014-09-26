class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :job_ID
      t.string :emp_name
      t.string :title
      t.text :description
      t.string :tags
      t.string :deadline

      t.timestamps
    end
  end
end
