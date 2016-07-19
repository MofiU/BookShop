class Account < ActiveRecord::Base
  has_many :orders
  belongs_to :user

  validates :amount,   :presence => true
  validates :balance,  :presence => true
  validates :amount,   :numericality  => { :greater_than_or_equal_to => 0.00, :message => I18n.t("book.invalid_amount") }
  validates :balance,  :numericality  => { :greater_than_or_equal_to => 0.00, :message => I18n.t("book.invalid_balance") }


end
