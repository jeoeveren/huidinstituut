class Treatment < ApplicationRecord
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :labels
  belongs_to :product
  has_many :treatment_items
end
