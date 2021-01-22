class Airport < ApplicationRecord
  include GenericCodes
  has_many :airlines

  before_create  do
    self.port_code = generate_unique_code(self.resource)
  end

  def self.resource
    'AIRPORT'
  end
end
