class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.belongs_to :discount
      t.belongs_to :cetegory
      t.string :name, :null => false
      t.string :author, :null => false
      t.string :publisher, :null => false
      t.string :number, :null => false
      t.decimal :price, :precision => 16, :scale => 4, :null => false, :default => 0
      t.string :introduction, :null => true
      t.integer :inventory, :null => false, :default => 0
      t.string :status, :null => false, :default => 'inactive'
      t.timestamps
    end
  end
end
