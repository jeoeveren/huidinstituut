class AddProductToProductFeature < ActiveRecord::Migration[5.1]
  def change
    add_reference :product_features, :product, foreign_key: true
  end
end
