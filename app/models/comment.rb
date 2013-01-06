class Comment < ActiveRecord::Base
  attr_accessible :text, :user, :state_id, :ticket_id

  after_create :set_ticket_state

  belongs_to :ticket
  delegate :project, :to => :ticket

  belongs_to :user
  belongs_to :state

  validates :text, :presence => true

  private
  def set_ticket_state
    self.ticket.state = self.state
    self.ticket.save!
  end
end
