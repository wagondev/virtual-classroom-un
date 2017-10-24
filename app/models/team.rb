class Team < ApplicationRecord
    validates :name, presence: true, length: {minimum: 3}, uniqueness: true
    validates :max_member, presence: true, :numericality => {greater_than_or_equal_to: 1}
    validates :description, length: {maximum: 150}
    belongs_to :Group
end
