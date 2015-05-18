require 'rails_helper'

describe CommentsController do
  let(:product) { create(:product) }

  it "POST #create" do
    post(:create, content: "lorem ipsum", product_id: product.id)
    expect(Comment.count).to eq 1
    expect(response).to redirect_to(:root)
  end
end
