class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = current_user.orders
  end

  def create
    @cart = current_user.cart
    @order = Order.new(user: current_user, status: 'pending', date: Date.today)

    if @order.save
      create_order_products(@order, @cart.cart_products)
      @cart.destroy
      redirect_to order_path(@order), notice: 'Order placed successfully.'
    else
      redirect_to cart_path, alert: 'Unable to place the order.'
    end
  end

  def show
    @order = current_user.orders.find(params[:id])
    @order_products = @order.order_products.includes(:product)
    @total_due = calculate_total_due(@order_products)
  end

  helper_method :display_order_status

  private

  def calculate_total_due(order_products)
    order_products.sum { |order_product| order_product.quantity * order_product.price }
  end

  def create_order_products(order, cart_products)
    cart_products.each do |cart_product|
      OrderProduct.create(
        order: order,
        product: cart_product.product,
        quantity: cart_product.quantity,
        price: cart_product.price
      )
    end
  end

  def display_order_status(status)
    case status
    when 0
      'Pending'
    when 1
      'Delivered'
    else
      'Unknown Status'
    end
  end
end
