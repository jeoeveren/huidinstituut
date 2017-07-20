class CreateTreatments < ActiveRecord::Migration[5.1]
  def change
    create_table :treatments do |t|
      t.string :name
      t.string :description
      t.integer :show_order
      t.boolean :visible

      t.timestamps
    end
  end
end
