# app/controllers/order_products_controller.rb

class OrderProductsController < ApplicationController
  before_action :set_order_product, only: [:show, :edit, :update, :destroy]

  def create
    @order_product = OrderProduct.new(order_product_params)
    if @order_product.save
      redirect_to @order_product.order
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_order_product
    @order_product = OrderProduct.find(params[:id])
  end

  def order_product_params
    params.require(:order_product).permit(:product_id, :order_id, :quantity, :price)
  end
end
