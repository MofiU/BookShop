class Order <ActiveRecord::Base
  belongs_to :account
  has_many :book_orders

  validates_presnece_of :note, :status,
  validates_inclusion_of :status, :in => [Constant::General::ACTIVE, Constant::General::INACTIVE], :message => I18n.t('general.invalid_status')
end
