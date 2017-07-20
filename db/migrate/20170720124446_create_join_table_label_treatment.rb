class CreateJoinTableLabelTreatment < ActiveRecord::Migration[5.1]
  def change
    create_join_table :labels, :treatments do |t|
      t.index [:label_id, :treatment_id]
      t.index [:treatment_id, :label_id]
    end
  end
end
