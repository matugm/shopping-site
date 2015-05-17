require 'rails_helper'

describe CommentsController do
  let(:product) { create(:product) }
  let(:comment) { create(:comment) }

  it "POST #create" do
    post(:create, content: comment.content, product_id: product.id)
    expect(response).to redirect_to(:root)
  end
end
