class Team < ApplicationRecord
    validates :name, presence: true, length: {minimum: 3}, uniqueness: true
    validates :max_member, presence: true, :numericality => {greater_than_or_equal_to: :min_member}
    validates :min_member, presence: true, :numericality => {greater_than_or_equal_to: 1}
    validates :description, length: {maximum: 1000}
    
    mount_uploader :logo, FreeGroupImageUploader
     
    belongs_to :group, foreign_key: "group_id", class_name: "Group"
    has_many :members, dependent: :destroy
    
    before_save :default_values
    def default_values
        self.description ||= "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo architecto cum neque eligendi tenetur, earum libero iste eum similique aliquam provident. Nulla commodi velit deserunt adipisci veritatis, rerum ratione molestias!"
    end
    def self.teamAvailableOpen(user_id)
        Team.includes([{members: :user},group: :teams]).where.not(users:{id: user_id}, members:{user_id: user_id}).where( groups: {id: 1}).order(created_at: :desc)
    end
    def self.myTeams(user_id)
        Member.where(user_id: user_id)
    end
    def self.userMembers(team_id)
        User.joins(members: :team).where.not(members:{level: 0}).where(teams:{id: team_id}).order(:id)
    end
    def self.userInscription(team_id)
        User.joins(members: :team).where(members:{level: 0}, teams:{id: team_id}).order(:id)
    end
    def self.myLevel(user_id, team_id)
        Member.where(user_id: user_id , team_id: team_id)
    end
    def self.memberInscription(team_id)
        Member.where(team_id: team_id, level: 0)
    end
    def self.numberOfMemberIn
        Member.where.not(level:0).group(:team_id).count
    end
    def self.numberOfMember
        Member.group(:team_id).count
    end
    def self.memberId(user_id, team_id)
        Member.where(user_id: user_id, team_id: team_id)
    end
    def self.getMessages(team_id)
        Message.includes(:member).where(members:{team_id: team_id}).order(created_at: :desc)       
    end
end
