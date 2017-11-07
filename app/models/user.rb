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
  
  has_many :inscriptions, dependent: :destroy
  has_many :members, dependent: :destroy

  def self.subjectsUser ##Pendiente query para verificar materias inscritas
    Subject.all
  end
  def self.freeTeamsIn(user_id)
    Team.includes([{members: :user},group: :teams]).where(users:{id: user_id}, groups: {id: 1}).order(created_at: :asc)
  end
end
