class CreateTreatmentItems < ActiveRecord::Migration[5.1]
  def change
    create_table :treatment_items do |t|
      t.string :name
      t.string :description
      t.string :duration
      t.decimal :price
      t.integer :show_order
      t.boolean :visible

      t.timestamps
    end
  end
end
