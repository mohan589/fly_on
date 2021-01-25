class Airline < ApplicationRecord
  include GenericCodes
  belongs_to :airport
  has_many :planes, through: :plane_models

  before_create  do
    self.code = generate_unique_code(self.resource)
  end

  def self.resource
    'AIRLINE'
  end
end
