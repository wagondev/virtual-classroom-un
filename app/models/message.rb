class Message < ApplicationRecord
  belongs_to :member, foreign_key: "member_id", class_name: "Member"
  
  validates :title, presence: true, length: {minimum: 3, maximum: 140}
  validates :body, length: {maximum: 1000}
  validates :address, length: {maximum: 100}
  geocoded_by :address
  after_validation :geocode
  
  mount_uploaders :document, FileUploader
  serialize :document, JSON # If you use SQLite, add this line.

  def self.getTeam(member_id)
  	Team.includes(:members).where(members:{ id: member_id}).first
  end
end
