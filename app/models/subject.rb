class Subject < ApplicationRecord
    validates :mid, :numericality => {greater_than_or_equal_to: 1}, presence: true, uniqueness: true
    validates :name, presence: true, length: {minimum: 3}, uniqueness: true
    validates :description, length: {maximum: 150}
end
