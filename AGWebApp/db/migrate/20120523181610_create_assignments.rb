class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :user_id, :null => false 
      t.integer :project_id, :null => false 
      t.integer :observation_id, :null => false 
      t.boolean :archived, :default => false
      t.date :archive_date

      t.timestamps
    end
  end
end
