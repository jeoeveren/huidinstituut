class CreateLabels < ActiveRecord::Migration[5.1]
  def change
    create_table :labels do |t|
      t.string :name
      t.integer :show_order
      t.boolean :visible

      t.timestamps
    end
  end
end
