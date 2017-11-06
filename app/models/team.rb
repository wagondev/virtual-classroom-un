class Team < ApplicationRecord
    validates :name, presence: true, length: {minimum: 3}, uniqueness: true
    validates :max_member, presence: true, :numericality => {greater_than_or_equal_to: 1}
    validates :description, length: {maximum: 1000}
    
    mount_uploader :logo, FreeGroupImageUploader
     
    belongs_to :group, foreign_key: "group_id", class_name: "Group"
    has_many :members, dependent: :destroy
    
    before_save :default_values
    def default_values
        self.description ||= "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo architecto cum neque eligendi tenetur, earum libero iste eum similique aliquam provident. Nulla commodi velit deserunt adipisci veritatis, rerum ratione molestias!"
    end
    def self.teamAvailableOpen
        Team.includes([{members: :user},group: :teams]).where.not(users:{id: current_scope}).where( groups: {id: 1}).order(created_at: :desc)
    end
end
