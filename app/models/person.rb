class Person < ActiveRecord::Base

  attr_accessible :name, :dob, :title, :background

  has_many :family_members
  has_many :relations, :through => :family_members


  ## VALIDATIONS ##

  before_validation do
    self.name = self.name.titleize if self.name.present?
  end

  validates :name, :presence => true

end
