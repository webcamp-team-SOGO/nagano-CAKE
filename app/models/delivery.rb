class Delivery < ApplicationRecord
  belongs_to :customer

  validates :name, presence: true

  def deliveries
    self.postal_code + self.address + self.name
  end
end
