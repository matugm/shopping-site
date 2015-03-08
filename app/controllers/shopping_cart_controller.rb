class ShoppingCartController < ApplicationController
  def add
    @cart = ShoppingCart.find_or_create_by(user: current_user, product_id: params[:product_id])

    @cart.increment(:quantity, 1)
    @cart.save!
    redirect_to :root
  end

  def index
    @cart = ShoppingCart.where(user: current_user)
  end

  def delete
    @cart = ShoppingCart.where(user: current_user, product_id: params[:product_id])
    @cart.destroy_all
    redirect_to :root
  end
end
