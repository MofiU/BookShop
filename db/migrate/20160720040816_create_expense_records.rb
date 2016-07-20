class CreateExpenseRecords < ActiveRecord::Migration
  def change
    create_table :expense_records do |t|
      t.belongs_to :account
      t.string :action, :null => false
      t.decimal :amount, :precision => 16, :scale => 4, :null => false, :default => 0
      t.timestamps null: false
    end
  end
end
