class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, presence: :true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORIES, allow_nil: false }
  has_many :reviews, dependent: :destroy

  def average_rating
    average_rating = 0
    if self.reviews.length > 0
      self.reviews.each do |review|
        average_rating += review.rating
      end
      average_rating = average_rating / self.reviews.length
    end
    average_rating
  end
end
