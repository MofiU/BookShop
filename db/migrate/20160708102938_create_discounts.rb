class CreateDiscounts < ActiveRecord::Migration
  def change
    create_table :discounts do |t|
      t.integer :rate, :null => false, :default => 10
      t.datetime :begin_time, :null => false
      t.datetime :end_time, :null => false
      t.string :status, :default => 'inactive'
      t.timestamps
    end
  end
end
