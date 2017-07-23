class CreateJoinTableCategoryTreatment < ActiveRecord::Migration[5.1]
  def change
    create_join_table :categories, :treatments do |t|
      t.references :category, foreign_key: true
      t.references :treatment, foreign_key: true
    end
  end
end
