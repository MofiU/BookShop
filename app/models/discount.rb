class Discount <ActiveRecord::Base
  has_many :books

  validates_presence_of :name, :rate, :begin_time, :end_time, :status
  validates_numbericality_of :rate, :greater_then_or_equal_to => 1
  validates_inclusion_of :status, :in => [Constant::ACTIVE, Contsant::INACTIVE]
end
