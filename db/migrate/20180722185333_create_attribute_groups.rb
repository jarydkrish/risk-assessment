class CreateAttributeGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :attribute_groups do |t|
      t.references :drug_type
      t.string :name

      t.timestamps
    end
  end
end
