class CreateAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :attributes do |t|
      t.references :attribute_group
      t.string :name

      t.timestamps
    end
  end
end
