class Order < ApplicationRecord

  belongs_to :customer
  has_many :order_items, dependent: :destroy
  validates :created_at, presence: true
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :address, presence: true
  enum payment_method: { クレジットカード: 0, 銀行振込: 1 }
  enum status: { 入金待ち: 0, 入金確認: 1, 製作中: 2, 発送準備中: 3, 発送済み: 4 }

end
