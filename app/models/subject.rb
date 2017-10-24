class Subject < ApplicationRecord
    validates :mid, :numericality => {greater_than_or_equal_to: 1}, presence: true, uniqueness: true
    validates :name, presence: true, length: {minimum: 3}, uniqueness: true
    validates :description, length: {maximum: 150}
<<<<<<< HEAD
    has_many :groups, :dependent => :destroy
=======
    has_many :groups, dependent: :destroy
>>>>>>> 70ed089780d8571d5adedc2b71f81fae9d6a0b3c
    #belongs_to :Career
    
    #accepts_nested_attributes_for :groups
end
