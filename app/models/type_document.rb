class TypeDocument < ApplicationRecord
  validates :name, presence: true, format: { with: /\A[a-záéíóúñA-ZÁÉÍÓÚÑ]+\z/, message: "Only letters, underscores, hyphens, and spaces are allowed." }
end
