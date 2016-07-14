class BookOrder < ActiveRecord::Base
  belongs_to :book
  has_many :orders
end
