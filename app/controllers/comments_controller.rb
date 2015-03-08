class CommentsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @product.comments.create(content: params[:content], product: @product)

    if @product.save
      flash[:notice] = "Comment has been added."
      redirect_to :root
    else
      flash[:error] = @product.errors
      redirect_to new_product_comment_path(@product.id)
    end

  end

  def new
    @product = Product.find(params[:product_id])
  end
end
