class Account < ActiveRecord::Base
  has_many :orders
  has_many :expense_records
  belongs_to :user

  validates :amount,   :presence => true
  validates :amount,   :numericality  => { :greater_than_or_equal_to => 0.00, :message => I18n.t("book.invalid_amount") }

  def recharge(money)
    amount += money
    save!
    ExpenseRecord.create!(account_id: id, action:  __method__, ammount: money)
  end

  def spend(money)
    amount -= money
    save!
    ExpenseRecord.create!(account_id: id, action:  __method__, ammount: money)
  end
end
