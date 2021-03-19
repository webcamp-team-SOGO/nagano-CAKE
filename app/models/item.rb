class Item < ApplicationRecord
  belongs_to :genre
  
  attachment :image
  validates :name, presence: true ,length: {minimum: 2,maximum: 30}
  validates :introduction, presence: true, length: {maximum: 200}
#   validates :genre, inclusion: { in: %w(draft publish private) }
  validates :taxfree, presence: true
  validates :is_valid, inclusion: { in: [true, false] }
  has_many :cart_items
  has_many :order_items
end
