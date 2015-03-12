module ApplicationHelper
  def shopping_cart_count
    ShoppingCart.where(user: current_user).count
  end

  def shopping_cart_button(id)
    if current_user
      button_to 'Add to shopping cart', shopping_cart_add_path(id), { method: 'post', class: 'btn btn-primary' }
    end
  end
end
