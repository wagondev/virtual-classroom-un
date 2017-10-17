class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable, :confirmable
         
  validates :name, presence: true, length: {minimum: 3}
  validates :student, presence: true
  validates :career, presence: true, length: {minimum: 3}
  validates :email, presence: true, uniqueness: true
  validates :encrypted_password, presence: true
end
