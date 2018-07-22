# frozen_string_literal: true

# Represents an attribute group, like "Pharmacy", or "Administration Areas"
class AttributeGroup < ApplicationRecord
  belongs_to :drug_type
  has_many :group_attributes, class_name: 'Attribute', dependent: :destroy
end
