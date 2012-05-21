class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :company_id, :null => false
      t.boolean :is_primary, :default => false
      t.string :first_name, :null => false
      t.string :middle_name
      t.string :last_name, :null => false
      t.string :title
      t.string :email, :null => false
      t.string :cell_phone
      t.string :business_phone
      t.date :archive_date

      t.timestamps
    end
  end
end
