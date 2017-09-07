class Student < ApplicationRecord
    validates :idStudent, numericality: true, presence: true, uniqueness: true
    validates :name, presence: true
    ##validates :birth_day  
    ##validates :city
    ##validates :ocupation
    ##validates :career
    ##validates :preferences
    ##validates :about_me
end
