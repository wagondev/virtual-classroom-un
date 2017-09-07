class Workteam < ApplicationRecord
    validates :idWorkteam, numericality: true, presence: true, uniqueness: true   
    validates :idStudent, numericality: true, presence: true, uniqueness: true   
    validates :idGroup, numericality: true, presence: true, uniqueness: true  
end
