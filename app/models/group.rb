class Group < ApplicationRecord
    validates :name, presence: true, length: {minimum: 3}
    belongs_to :subject, foreign_key: "subject_id", class_name: "Subject"
    
    has_many :inscriptions, dependent: :destroy
    has_many :teams, dependent: :destroy
end
