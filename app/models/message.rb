class Message < ApplicationRecord
  belongs_to :member
  
  validates :title, presence: true, length: {minimum: 3}
  validates :max_member, presence: true, :numericality => {greater_than_or_equal_to: 1}
  validates :body, length: {maximum: 1000}, presence: true
  
  mount_uploaders :document, FileUploader
  serialize :document, JSON # If you use SQLite, add this line.

  def self.memberId(user_id, team_id)
  	Member.where(user_id: user_id, team_id: team_id)
  end
end
