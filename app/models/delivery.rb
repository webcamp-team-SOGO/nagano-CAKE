class Delivery < ApplicationRecord
  belongs_to :customer

  def deliveries
    self.postal_code + self.address + self.name
  end
end
