class Plane < ApplicationRecord
  include GenericCodes

  belongs_to :airline
  enum status: [:ARRIVED, :DEPARTURED, :CANCELLED]

  before_create :set_code

  def set_code
    self.plane_code = generate_unique_code(self.resource)
  end

  def self.resource
    'PLANE'
  end
end
