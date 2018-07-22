# frozen_string_literal: true

# Represents an attribute value for a particular attribute/drug pair
class AttributeValue < ApplicationRecord
  belongs_to :attribute
  belongs_to :drug
  belongs_to :note
end
