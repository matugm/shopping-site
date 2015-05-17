include ShoppingCartHelper

describe 'ShoppingCartHelper' do
  it 'sums the product prices and multiply by their quantity' do
    @cart = [create(:shopping_cart)]
    expect(calculate_total).to eq 199.98
  end
end
