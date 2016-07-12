class Cetegory < ActiveRecord::Base
  has_many: :books

  validates_presence_of   :name, :status
  validates_uniqueness_of :name, :scope => :status
  validates_inclusion_of  :status, :in => Constant::Status.CONST_VALUES, :message => I18n.t("cetegry.invalid_status")

end
