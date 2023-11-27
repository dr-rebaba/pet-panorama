class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :destroy, :edit, :update]

  def index
    @products = Products.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to product_path(@product)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @review = Review.new(product: @product)
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to @product
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path, status: :see_other
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:list).permit(:title, :description, :quantity, :price, :photo)
  end
end
