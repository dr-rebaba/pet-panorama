class Review < ApplicationRecord
  belongs_to :product
  validates :rating, :comment, presence: true
  validates :comment, length: {minimum: 6}
end
