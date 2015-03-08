module ShoppingCartHelper
  def calculate_total
    @cart.inject(0) { |sum, item| sum + (item.product.price * item.quantity) }
  end
end
