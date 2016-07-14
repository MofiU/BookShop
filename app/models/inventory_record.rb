class InventoryRecord < ActiveRecord::Base
  belongs_to :book

  validates_presence_of :count, :action, :price
  validates_numbericality :count, :greater_than_or_equal_to => 1
end
