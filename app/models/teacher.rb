class Teacher < ApplicationRecord
    validates :idStudent, numericality: true, presence: true, uniqueness: true
    validates :name, presence: true
end
