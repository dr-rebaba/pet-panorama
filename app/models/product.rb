class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :cart_products, dependent: :destroy
  has_many :order_products, dependent: :destroy
  belongs_to :user

  has_one_attached :photo
  validates :title, uniqueness: true, presence: true
  validates :description, :quantity, :price, presence: true
  validates :description, length: {minimum: 6}
end
