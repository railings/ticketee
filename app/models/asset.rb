class Asset < ActiveRecord::Base
  attr_accessible :title, :body, :asset

  has_attached_file :asset, :path => (Rails.root + "files/:id").to_s,
                            :url => "/files/:id"

  belongs_to :ticket
end
