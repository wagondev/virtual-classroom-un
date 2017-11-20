class Assignment < ApplicationRecord
    
    belongs_to :group, foreign_key: "group_id", class_name: "Group"
    
    has_one :score
end
