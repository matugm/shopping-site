module ApplicationHelper
  def shopping_cart_count
    ShoppingCart.count(user: current_user)
  end
end
