class Item < ApplicationRecord
  belongs_to :genre
  has_many :cart_items, dependent: :destroy
  has_many :order_items, dependent: :destroy

  attachment :image
  validates :name, presence: true ,length: {minimum: 2,maximum: 30}
  validates :introduction, presence: true, length: {maximum: 200}
  validates :taxfree, presence: true
  validates :is_valid, inclusion: { in: [true, false] }

  def self.search(search, word)
      @items = Item.where("name LIKE?","%#{word}%")
  end

end
