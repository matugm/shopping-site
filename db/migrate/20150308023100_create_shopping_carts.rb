class CreateShoppingCarts < ActiveRecord::Migration
  def change
    create_table :shopping_carts do |t|
      t.integer :quantity
      t.references :product, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :shopping_carts, :products
    add_foreign_key :shopping_carts, :users
  end
end
