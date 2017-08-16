class Restaurant < ApplicationRecord
  CATEGORIES = %w(chinese italian japanese french belgian)

  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian), message: "%{value} is not a valid category" }

  def average_rating
    reviews = self.reviews.all
    average = 0
    reviews.each do |review|
      average += review.rating
    end
    average = average / reviews.length unless reviews.length.zero?
    return average
  end
end
