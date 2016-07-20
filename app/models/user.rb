class User < ActiveRecord::Base
  has_one :account
  after_create  :init_account
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  private

  def init_account
    Account.create(user_id: self.id)
  end

end
