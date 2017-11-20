class Inscription < ApplicationRecord
    belongs_to :group, foreign_key: "group_id", class_name: "Group"
    belongs_to :user, foreign_key: "user_id", class_name: "User"
    
    has_many :scores, dependent: :destroy
end
