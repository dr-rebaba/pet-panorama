class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @product = Product.find(params[:product_id])
    @review.product = @product
    if @review.save
      redirect_to product_path(@product)
    else
      render "producs/show", status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to product_path(@review.product)
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
