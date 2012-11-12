class Project < ActiveRecord::Base
  has_many :tickets, :dependent => :destroy
  attr_accessible :name
  validates :name, :presence => true
end
