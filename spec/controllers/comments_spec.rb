require 'rails_helper'

describe CommentsController do
  it "POST #create" do
    Product.create(name: "one product")
    result = post(:create, content: "testing comments", product_id: 1)

    expect(result).to redirect_to(:root)
  end
end
