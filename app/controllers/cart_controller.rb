class CartController < ApplicationController
  def show

  end

  def add_item
    product = Product.find(params[:product_id])
    @cart.add_item(product.id)
    redirect_to @cart, notice: 'Producto añadido al carro de compras.'
  end

  def remove_item
    product = Product.find(params[:product_id])
    @cart.remove_item(product.id)
    redirect_to @cart, notice: 'Producto eliminado del carro de compras'
  end

   private

  def set_cart
    @cart = current_user.cart
    @card_product.cart = @cart
  end

end
