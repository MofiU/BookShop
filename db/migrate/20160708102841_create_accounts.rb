class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.belongs_to :user
      t.decimal :amount, :precision => 16, :scale => 4, :null => false, :default => 0
      t.decimal :balance, :precision => 16, :scale => 4, :null => false, :default => 0
      t.timestamps
    end
  end
end
