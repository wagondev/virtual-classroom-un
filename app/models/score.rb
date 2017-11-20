class Score < ApplicationRecord
    belongs_to :assignment, foreign_key: "assignment_id", class_name: "Assignment"
    
    belongs_to :inscription, foreign_key: "inscription_id", class_name: "Inscription"
end
