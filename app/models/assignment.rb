class Assignment < ApplicationRecord
    
    belongs_to :group, foreign_key: "group_id", class_name: "Group"
    
    has_many :scores, dependent: :destroy

    def self.inscriptionGroup(group_id)
    	Inscription.includes(:group).where(groups:{id:group_id})
    end
end
