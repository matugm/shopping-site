require 'rails_helper'

describe ShoppingCart do
  let(:cart) { build(:shopping_cart) }

  it "is invalid if the product doesn't exist" do
    cart.product_id = 5145
    expect(cart).to be_invalid
    expect(ShoppingCart.count).to eq 0
  end

  it "adds an item to the database if the product exist" do
    cart.save!
    expect(cart).to be_valid
    expect(ShoppingCart.count).to eq 1
  end
end
