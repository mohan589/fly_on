class Payment < ApplicationRecord
  has_many :user,  through: :schedules
end
