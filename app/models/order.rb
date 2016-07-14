class Order <ActiveRecord::Base
  belongs_to :account
  has_many :book_orders

  validates_presnece_of :note, :status,
  validates_inclusion_of :status, :in => [Constant::ACTIVE, Constant::INACTIVE]
end
