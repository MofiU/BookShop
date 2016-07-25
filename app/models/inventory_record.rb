class InventoryRecord < ActiveRecord::Base
  belongs_to :book

  validates_presence_of :count, :action, :price
  validates_numericality_of :count, :greater_than_or_equal_to => 1, :message => I18n.t('inventory_record.invalid_count')
end
