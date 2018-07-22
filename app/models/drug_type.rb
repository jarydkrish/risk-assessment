# frozen_string_literal: true

# Represents a drug type, like "Antineoplastic", "Non-antineoplastic",
# or "Reproductive"
class DrugType < ApplicationRecord
  has_many :drugs, dependent: :destroy
end
