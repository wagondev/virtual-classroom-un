class Member < ApplicationRecord
    belongs_to :team, foreign_key: "team_id", class_name: "Team"
    belongs_to :user, foreign_key: "user_id", class_name: "User"
    has_many :message, dependent: :destroy
end
