class ShoppingCart < ActiveRecord::Base
  belongs_to :product
  belongs_to :user

  validate :product_exist

  def product_exist
    begin
      Product.find(product_id)
    rescue ActiveRecord::RecordNotFound
      errors.add(:product_id, "Product doesn't exist")
    end
  end
end
