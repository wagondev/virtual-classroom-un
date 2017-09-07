class Group < ApplicationRecord
    validates :id_group, numericality: true, presence: true, uniqueness: true  
    validates :name, presence: true, length: { minimum: 2 }, uniqueness: true
    validates  :number_member, numericality: true 
end
