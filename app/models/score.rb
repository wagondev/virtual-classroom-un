class Score < ApplicationRecord
    belongs_to :assignment, foreign_key: "assignment_id", class_name: "Assignment"
end
