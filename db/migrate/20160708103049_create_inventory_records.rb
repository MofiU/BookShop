class CreateInventoryRecords < ActiveRecord::Migration
  def change
    create_table :inventory_records do |t|
      t.belongs_to :book
      t.integer :count, :null => false, :default => 0
      t.string :action, :null => false
      t.decimal :price, :precision => 16, :scale => 4, :null => false, :default => 0
      t.string :note, :null => true
      t.timestamps
    end
  end
end
