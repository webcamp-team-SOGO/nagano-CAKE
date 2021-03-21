class OrderItem < ApplicationRecord

  belongs_to :item, optional: true
  belongs_to :order
  
  validates :price, presence: true
  validates :number, presence: true
  validates :making_status, presence: true
  enum making_status: { 製作不可: 0, 製作待ち: 1, 製作中: 2, 製作完了: 3 }

end
