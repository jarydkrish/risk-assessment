class CreateAttributeValues < ActiveRecord::Migration[5.2]
  def change
    create_table :attribute_values do |t|
      t.references :attribute
      t.text :value

      t.timestamps
    end
  end
end
