class SeatSetting < ApplicationRecord
  enum class_title_id: [:FIRST_CLASS, :BUSINESS_CLASS, :ECONOMY_CLASS]
end
