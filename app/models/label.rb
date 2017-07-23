class Label < ApplicationRecord
  has_and_belongs_to_many :treatments

  validates :name,
    presence: true,
    uniqueness: true,
    length: { in: 5..20, message: "Ingave %{value} onjuist : ingave moet [5..20] karakters lang zijn." },
    format: { with: /\A[[:alpha:][:digit:][:blank:]]+\z/, message: "Ingave %{value} is onjuist : bereik is [a-zA-Z0-9_]." }

  validates :show_order,
    presence: true,
    numericality: true,
    inclusion: { in: 1..99, message: "Ingave %{value} is onjuist : bereik is [1..99]." }

  validates :visible,
    presence: true,
    inclusion: { in: [true, false], message: "Ingave %{value} is onjuist : bereik is [true|false]." }

end
