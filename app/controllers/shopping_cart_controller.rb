class ShoppingCartController < ApplicationController
  def add
    @cart = ShoppingCart.find_or_create_by(user: current_user, product_id: params[:product_id])

    @cart.quantity ? @cart.quantity += 1 : @cart.quantity = 1
    @cart.save!
    redirect_to :root
  end
end
