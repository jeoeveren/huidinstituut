class AddCategoryToTreatment < ActiveRecord::Migration[5.1]
  def change
    add_reference :treatments, :category, foreign_key: true
  end
end
