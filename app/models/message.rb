class Message < ApplicationRecord
  belongs_to :member, foreign_key: "member_id", class_name: "Member"
  
  validates :title, presence: true, length: {minimum: 3, maximum: 140}
  validates :body, length: {maximum: 1000}, presence: true
  validates :address, length: {maximum: 100}
  geocoded_by :address
  after_validation :geocode
  
  mount_uploaders :document, FileUploader
  serialize :document, JSON # If you use SQLite, add this line.

  def self.memberId(user_id, team_id)
  	Member.where(user_id: user_id, team_id: team_id)
  end
end
