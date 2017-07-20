class CreateProductFeatures < ActiveRecord::Migration[5.1]
  def change
    create_table :product_features do |t|
      t.string :name
      t.string :description
      t.integer :show_order
      t.boolean :visible

      t.timestamps
    end
  end
end
