class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable, :confirmable
         
  validates_inclusion_of :student, :in => [true, false]
  validates :career, presence: true
  validates :email, presence: true, uniqueness: true
  validates :encrypted_password, presence: true

  mount_uploader :photo, ProfilePhotoUploader
  has_many :Inscriptions, dependent: :destroy
end
