# frozen_string_literal: true

# Represents a named attribute of a drug, like "Dosage Forms" or "NDC Number"
class Attribute < ApplicationRecord
  belongs_to :attribute_group
  has_many :attribute_values, dependent: :destroy
end
