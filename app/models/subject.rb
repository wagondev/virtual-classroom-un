class Subject < ApplicationRecord
    validates :idSubject, presence: true, uniqueness: true, length: {minimum: 1}
    validates :name, presence: true, length: {minimum: 3}
end
