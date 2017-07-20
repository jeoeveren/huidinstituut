class AddTreatmentToTreatmentItem < ActiveRecord::Migration[5.1]
  def change
    add_reference :treatment_items, :treatment, foreign_key: true
  end
end
