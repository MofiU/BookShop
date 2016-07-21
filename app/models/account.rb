class Account < ActiveRecord::Base
  has_many :orders
  has_many :expense_records
  belongs_to :user

  validates :amount,   :presence => true
  validates :amount,   :numericality  => { :greater_than_or_equal_to => 0.00, :message => I18n.t("account.invalid_amount") }

  def recharge(money)
    #####BUG
    self.amount += money.strip.to_d
    self.save!
    ExpenseRecord.create!(account_id: id, action:  __method__, amount: self.amount)
  end

  def spend(money)
    self.amount -= money.strip.to_d
    self.save!
    ExpenseRecord.create!(account_id: id, action:  __method__, amount: self.amount)
  end
end
