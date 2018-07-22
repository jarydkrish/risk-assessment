class AddNoteToAttributeValue < ActiveRecord::Migration[5.2]
  def change
    add_reference :attribute_values, :note, foreign_key: true
  end
end
