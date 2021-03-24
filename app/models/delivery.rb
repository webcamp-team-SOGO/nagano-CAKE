class Delivery < ApplicationRecord
  belongs_to :customer

  validates :postal_code, :address, :name, presence: true
  validates :postal_code, length: { is: 7, message: 'は7桁で入力してください' }, format: { with: /\A[0-9]+\z/, message: 'は半角数字で入力してください' }

  def deliveries
    self.postal_code + self.address + self.name
  end
end
