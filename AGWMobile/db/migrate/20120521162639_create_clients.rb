class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :company_name, :null => false
      t.string :address1, :null => false
      t.string :address2
      t.string :city, :null => false
      t.string :state, :null => false
      t.string :zipcode, :null => false
      t.string :phone
      t.string :fax
      t.boolean :PO_required, :default => true
      t.date :archive_date

      t.timestamps
    end
  end
end
