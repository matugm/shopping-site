class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.references :product, index: true

      t.timestamps null: false
    end
    add_foreign_key :comments, :products
  end
end
