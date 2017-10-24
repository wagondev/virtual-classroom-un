class Inscription < ApplicationRecord
    belongs_to :Group, foreign_key: "group_id", class_name: "Group"
    belongs_to :User, foreign_key: "user_id", class_name: "User"
end
