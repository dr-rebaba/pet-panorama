# == Schema Information
#
# Table name: orders
#
#  id         :bigint           not null, primary key
#  date       :date
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_orders_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Order < ApplicationRecord
  # has_many :order_products, dependent: :destroy
  has_many :products, through: :order_products
  belongs_to :user

  validates :status, :date, presence: true
end
