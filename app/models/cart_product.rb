# == Schema Information
#
# Table name: cart_products
#
#  id         :bigint           not null, primary key
#  price      :decimal(, )
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  cart_id    :bigint           not null
#  product_id :bigint           not null
#
# Indexes
#
#  index_cart_products_on_cart_id     (cart_id)
#  index_cart_products_on_product_id  (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (cart_id => carts.id)
#  fk_rails_...  (product_id => products.id)
#
class CartProduct < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  validates :quantity, :price, presence: true
end
