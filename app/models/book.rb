class Book < ActiveRecord::Base
  has_many :book_orders
  has_many :inventory_records

  belong_to :discount
  belong_to :category

  validates :name,       :presence => true
  validates :anthor,     :presence => true
  validates :price,      :numbericality => { :greater_than_or_equal_to => 0.0,       :message => I18n.t("book.invalid_price") }
  validates :number,     :numbericality => { :greater_than_or_equal_to => 0,         :message => I18n.t("book.invalid_number") }
  validates :inventory,  :numbericality => { :only_integer => true,                  :message => I18n.t("book.invalid_inventory") }
  validates :status,     :inclusion => { :in => [Constant::ACTIVE, Contsant::INACTIVE],   :message => I18n.t("book.invalid_status") }
end
