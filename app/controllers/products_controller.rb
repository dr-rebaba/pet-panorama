class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :destroy]

  def index
    @products = Products.all
  end

  def new
  end

  def create
  end

  def show
    @review = Review.new(product: @product)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:list).permit(:name, :photo)
  end
end
