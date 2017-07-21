class CreateLabelsTreatments < ActiveRecord::Migration[5.1]
  def change
    create_table :labels_treatments do |t|
      t.references :label, foreign_key: true
      t.references :treatment, foreign_key: true
    end
  end
end
