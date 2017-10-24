class Group < ApplicationRecord
    validates :name, presence: true, uniqueness: true, length: {minimum: 3}
    belongs_to :subject
    #has_many :Teams
    #has_many :Inscriptions
end
