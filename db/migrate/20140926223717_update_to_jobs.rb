class UpdateToJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :job_ID
      t.string :emp_name
      t.string :title
      t.text :description
      t.string :tags
      t.timestamp :deadline
      t.string :category
      t.string :public

      t.timestamps
    end
  end
end
