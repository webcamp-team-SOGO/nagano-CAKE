class Genre < ApplicationRecord

	has_many :items, dependent: :destroy

	validates :name, presence: true, uniqueness: true

def self.search(search, word)
    @genres = Genre.where("name LIKE?","%#{word}%")
end

end
