require 'rails_helper'

describe ProductsController do
  it "GET #index" do
    result = get(:index)
    expect(result).to render_template(:index)
  end
end
