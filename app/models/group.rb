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
    def self.studentNumberTotal(group_id)
        Inscription.group(:group_id).where(group_id: group_id).count
    end
    def self.teamsAvailable(group_id, user_id)
        Team.includes(members: :user).where(group_id: group_id,users:{id: user_id}).order(:created_at)
    end
    def self.userInscriptionGroupAlphabetic(group_id, user_id)
        User.includes(inscriptions: :group).where(groups:{id: group_id}).where.not(id: user_id).order(email: :asc)
    end
end
