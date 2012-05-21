class CreateRedFlags < ActiveRecord::Migration
  def change
    create_table :red_flags do |t|
      t.integer :client_id
      t.integer :project_id
      t.text :description, :null => false

      t.timestamps
    end
  end
end
