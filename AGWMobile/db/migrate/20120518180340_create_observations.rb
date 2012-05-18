class CreateObservations < ActiveRecord::Migration
  def change
    create_table :observations do |t|
      t.decimal :def_fee, precision: 8, scale: 2
      t.string :title
      t.boolean :archived, :default => false

      t.timestamps
    end
  end
end
