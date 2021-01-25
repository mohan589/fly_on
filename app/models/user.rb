class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :schedules
  has_many :payments,  through: :schedules
  has_many :notifications
  
  ROLES = %i[superadmin admin enduser]
end
