class StudentCreateGroup < ApplicationRecord
    validates :nombre, presence: true, uniqueness: true
    validates :maxIntegrantes, :numericality => {greater_than_or_equal_to: 1}, presence: true
end
