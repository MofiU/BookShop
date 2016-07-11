class CreateBookOrders < ActiveRecord::Migration
  def change
    create_table :book_orders do |t|
      t.belongs_to :book
      t.belongs_to :order
    end
  end
end
