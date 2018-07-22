# frozen_string_literal: true

# Represents a drug
class Drug < ApplicationRecord
  belongs_to :drug_type
  has_many :attribute_values, dependent: :destroy
  has_many :drug_attributes, class_name: 'Attribute', through: :attribute_values
end
