class Administrator < ApplicationRecord
    validates :idRol, numericality: true, presence: true, uniqueness: true    
    validates :name, presence: true, length: {minimum: 2}, uniqueness: true
end
