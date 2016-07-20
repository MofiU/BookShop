class ExpenseRecord < ActiveRecord::Base
  belongs_to :account

  validates :amount,      :numericality => { :greater_than_or_equal_to => 0.0,       :message => I18n.t("expense_record.invalid_amount") }
end
