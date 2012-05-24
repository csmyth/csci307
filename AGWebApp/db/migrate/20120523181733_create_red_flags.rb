class CreateRedFlags < ActiveRecord::Migration
  def change
    create_table :red_flags do |t|
      t.integer :client_id
      t.integer :project_id
      t.text :description, :null => false
      t.boolean :archived, :default => false
      t.date :archive_date

      t.timestamps
    end
  end
end
