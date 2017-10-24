class Group < ApplicationRecord
    validates :name, presence: true, uniqueness: true, length: {minimum: 3}
    belongs_to :subject, foreign_key: "subject_id", class_name: "Subject"
    #has_many :Teams
    #has_many :Inscriptions
end
