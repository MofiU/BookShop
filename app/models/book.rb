
class Book < ActiveRecord::Base
  has_many :book_orders
  has_many :inventory_records

  belongs_to :discount
  belongs_to :category

  validates :name,       :presence => true
  validates :anthor,     :presence => true
  validates :price,      :numericality => { :greater_than_or_equal_to => 0.0,       :message => I18n.t("book.invalid_price") }
  validates :number,     :numericality => { :greater_than_or_equal_to => 0,         :message => I18n.t("book.invalid_number") }
  validates :inventory,  :numericality => { :only_integer => true,                  :message => I18n.t("book.invalid_inventory") }
  validates :status,     :inclusion => { :in => [Constant::General::ACTIVE, Constant::General::INACTIVE], :message => I18n.t("general.invalid_status") }

  scope :active, -> {where(:status, Constant::General::ACTIVE) }
  has_many :active_discounts, :conditions => {:status => Constant::General::ACTIVE}, :class_name => 'Discount'
  has_many :active_inventory_records, :conditions => {:status => Constant::General::ACTIVE}, :class_name => 'InvenntoryRecord'


  def detail_info
    self.class.active.joins(:active_discounts, :active_inventory_records).where("books.id = ?", params[:id])
  end
end
