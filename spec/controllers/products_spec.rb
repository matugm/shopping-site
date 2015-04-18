require 'rails_helper'

describe ProductsController do
  it "GET #index" do
    get(:index)
    expect(response).to render_template(:index)
  end
end
