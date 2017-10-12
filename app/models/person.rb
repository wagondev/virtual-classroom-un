class Person < ApplicationRecord
    
    validates :nident, presence: true, uniqueness: true, length: {minimum: 3}
    validates :name, presence: true, length: {minimum: 3}
    validates :gender, presence: true
    validates :aboutme, length: {maximum: 150}
    
    #mount_uploader :imagen, ImagenUploader
end
