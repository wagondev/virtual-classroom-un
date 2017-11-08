class Message < ApplicationRecord
  belongs_to :member
  
  validates :title, presence: true, length: {minimum: 3, maximum: 140}
  validates :body, length: {maximum: 1000}, presence: true
  validates :address, length: {maximum: 100}
  
  mount_uploaders :document, FileUploader
  serialize :document, JSON # If you use SQLite, add this line.
end
