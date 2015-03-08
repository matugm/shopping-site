module ApplicationHelper
  def shopping_cart_count
    ShoppingCart.count(user: current_user)
  end

  def shopping_cart_button(id)
    if current_user
      button_to 'Add to shopping cart', shopping_cart_add_path(id), { method: 'post' }
    end
  end
end
