class ShoppingCartController < ApplicationController
  def add
    @cart = ShoppingCart.find_or_create_by(user: current_user, product_id: params[:product_id])

    @cart.increment(:quantity, 1)

    if @cart.save
      flash[:notice] = "Item added to your shopping cart."
    else
      flash[:notice] = "Couldn't add this item to your shoppping cart."
    end

    redirect_to :root
  end

  def index
    @cart = ShoppingCart.where(user: current_user)
  end

  def delete
    @cart = ShoppingCart.where(user: current_user, product_id: params[:product_id])
    @cart.destroy_all
    flash[:notice] = "Item removed from your shopping cart."

    redirect_to :root
  end
end
