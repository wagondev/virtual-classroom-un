class Rol < ApplicationRecord
    validates :idRol, numericality: true, presence: true, uniqueness: true    
    validates :user_name, presence: true, uniqueness: true
    validates :password, presence: true, length: {in: 8..25}
end
