class Asset < ActiveRecord::Base
  attr_accessible :title, :body, :asset

  has_attached_file :asset
end
