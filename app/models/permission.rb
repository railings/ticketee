class Permission < ActiveRecord::Base
  attr_accessible :action, :thing_id, :thing_type, :thing, :user_id, :user

  belongs_to :user
  belongs_to :thing, :polymorphic => true
end
