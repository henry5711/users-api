class TypeUser < ApplicationRecord
  validates_uniqueness_of :name, presence: true, format: { with: /\A[a-záéíóúñA-ZÁÉÍÓÚÑ]+\z/, message: "Only letters, underscores, hyphens, and spaces are allowed." }
end
