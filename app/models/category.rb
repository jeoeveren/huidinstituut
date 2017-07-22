class Category < ApplicationRecord
  has_many :treatments

  after_initialize do
    if self.new_record?
      # default values will be available for new record.
      self.show_order = 1
      self.visible = true
    end
  end

  validates :name,
    presence: true,
    uniqueness: true,
    length: { in: 5..30, message: "Ingave %{value} onjuist : ingave moet [5..30] karakters lang zijn." },
    format: { with: /\A[[:alpha:][:digit:][:blank:]]+\z/, message: "Ingave %{value} is onjuist : bereik is [a-zA-Z0-9_]." }

  validates :show_order,
    presence: true,
    numericality: true,
    inclusion: { in: 1..99, message: "Ingave %{value} is onjuist : bereik is [1..99]." }

  validates :visible,
    presence: true,
    inclusion: { in: [true, false], message: "Ingave %{value} is onjuist : bereik is [true|false]." }

end
