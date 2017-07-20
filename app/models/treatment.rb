class Treatment < ApplicationRecord
  has_and_belongs_to_many :labels
  belongs_to :product
  has_many :treatment_items
  belongs_to :category
end
