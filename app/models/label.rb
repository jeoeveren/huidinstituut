class Label < ApplicationRecord
  has_and_belongs_to_many :treatments
end
