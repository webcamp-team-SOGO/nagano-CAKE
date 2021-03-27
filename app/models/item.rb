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
    if search == "forward_match"
      @item = Item.where("name LIKE?","#{word}%")
    elsif search == "backward_match"
      @item = Item.where("name LIKE?","%#{word}")
    elsif search == "perfect_match"
      @item = Item.where("#{word}")
    elsif search == "partial_match"
      @item = Item.where("name LIKE?","%#{word}%")
    else
      @item = Item.all
    end
end

end
