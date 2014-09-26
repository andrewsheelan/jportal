class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.string :emp_name
      t.string :contact_person
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
