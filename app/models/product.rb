# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  description :text
#  price       :float
#  quantity    :integer
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_products_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :cart_products, dependent: :destroy
  has_many :order_products, dependent: :destroy
  has_many :orders, through: :order_products
  belongs_to :user

  has_one_attached :photo
  validates :title, uniqueness: true, presence: true
  validates :description, :quantity, :price, :photo, presence: true
  validates :description, length: {minimum: 6}
end
