class CommentsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @comment = Comment.create(content: params[:content], product: @product)

    if @comment.save
      flash[:notice] = "Comment has been added."
      redirect_to :root
    else
      flash[:error] = @comment.errors.full_messages
      redirect_to new_product_comment_path(@product)
    end
  end

  def new
    @product = Product.find(params[:product_id])
  end
end
