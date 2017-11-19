class Group < ApplicationRecord
    validates :name, presence: true, length: {minimum: 3}
    belongs_to :subject, foreign_key: "subject_id", class_name: "Subject"
    
    has_many :inscriptions, dependent: :destroy
    has_many :teams, dependent: :destroy
    has_many :assignments, dependent: :destroy

    def self.subjectGroup(group_id)
    	Subject.includes(:groups).where(groups:{id: group_id})
    end
    def self.inscriptionGroup(group_id)
    	Inscription.includes(:group).where(groups:{id:group_id})   	
    end
end
