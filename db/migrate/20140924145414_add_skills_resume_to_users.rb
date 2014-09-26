class AddSkillsResumeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :phone_no, :string
    add_column :users, :skills, :string
    add_column :users, :resume, :text
    add_column :users, :coverLetter, :text
  end
end
