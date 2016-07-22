class Cetegory < ActiveRecord::Base
  has_many :books

  validates_presence_of   :name, :status
  validates_uniqueness_of :name, :scope => :status
  validates_inclusion_of  :status, :in => [Constant.General::ACTIVE, Contsant.General::INACTIVE], :message => I18n.t("general.invalid_status")

end
