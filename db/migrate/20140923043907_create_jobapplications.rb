class CreateJobapplications < ActiveRecord::Migration
  def change
    create_table :jobapplications do |t|

      t.timestamps
    end
  end
end
