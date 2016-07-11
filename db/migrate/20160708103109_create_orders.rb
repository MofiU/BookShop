class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :accout
      t.string :note, :null => true
      t.string :status, :null => false, :default => "active"
      t.timestamps
    end
  end
end
