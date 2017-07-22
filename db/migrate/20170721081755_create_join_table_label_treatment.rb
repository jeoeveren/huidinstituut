class CreateJoinTableLabelTreatment < ActiveRecord::Migration[5.1]
  def change
    create_join_table :labels, :treatments do |t|
      t.references :label, foreign_key: true
      t.references :treatment, foreign_key: true
    end
  end
end
