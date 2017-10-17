class Group < ApplicationRecord
    validates :name, presence: true, uniqueness: true, length: {minimum: 3}
end
