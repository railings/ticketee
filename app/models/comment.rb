class Comment < ActiveRecord::Base
  attr_accessible :text, :user # , :ticket

  validates :text, :presence => true

  #belongs_to :ticket
  belongs_to :user
end
