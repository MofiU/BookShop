class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, :null => false
      t.string :status, :null => false, :default => 'active'
      t.timestamps
    end
  end
end
