# frozen_string_literal: true

# Represents a note, like an asterisk, with additional details
class Note < ApplicationRecord
  has_many :attribute_values, dependent: :nullify
end
