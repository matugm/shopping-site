require 'rails_helper'

describe ShoppingCart do
  let(:cart) { ShoppingCart.new }

  it "is invalid if the product doesn't exist" do
    cart.product_id = 5145
    cart.user_id    = 1
    expect(cart).to be_invalid
  end

  it "adds an item to the database if the product exist" do
    product = Product.create(name: 'test', price: 99.99)
    cart    = ShoppingCart.create(product: product, user_id: 1)
    expect(cart).to be_valid
  end
end
