class CreateObservations < ActiveRecord::Migration
  def change
    create_table :observations do |t|
      t.decimal :def_fee, precision: 8, scale: 2, :null => false
      t.string :title, :null => false
      t.date :archive_date

      t.timestamps
    end
  end
end
