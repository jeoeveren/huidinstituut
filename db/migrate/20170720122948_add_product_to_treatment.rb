class AddProductToTreatment < ActiveRecord::Migration[5.1]
  def change
    add_reference :treatments, :product, foreign_key: true
  end
end
