class Inscription < ApplicationRecord
    validates :idInscription, numericality: true, presence: true, uniqueness: true   
    validates :idStudent, numericality: true, presence: true, uniqueness: true   
    validates :idCourse, numericality: true, presence: true, uniqueness: true   
end
