class CommentsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @product.comments.create(content: params[:content], product: @product)
    redirect_to :root
  end

  def new
    @product = Product.find(params[:product_id])
  end
end
