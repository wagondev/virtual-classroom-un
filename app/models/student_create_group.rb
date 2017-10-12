class StudentCreateGroup < ApplicationRecord
    validates :nombre, presence: true, uniqueness: true, length: {minimum: 3}
    validates :maxIntegrantes, :numericality => {greater_than_or_equal_to: 1}, presence: true
    validates :descripcion, length: {maximum: 150}
    
    mount_uploader :imagen, ImagenUploader
end
