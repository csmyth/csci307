class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :client_id, :null => false
      t.integer :project_number, :null => false
      t.integer :primary_contact_id, :null => false
      t.integer :billing_contact_id
      t.integer :letter_contact_id
      t.boolean :PO_per_project
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :subdivision
      t.integer :lot
      t.integer :block
      t.integer :filing
      t.integer :building
      t.integer :unit
      t.boolean :archived, :default => false
      t.date :archive_date
      t.text :description

      t.timestamps
    end
  end
end
