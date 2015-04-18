require 'rails_helper'

describe CommentsController do
  it "POST #create" do
    Product.create(name: "one product")
    post(:create, content: "testing comments", product_id: 1)

    expect(response).to redirect_to(:root)
  end
end
