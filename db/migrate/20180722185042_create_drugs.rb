class CreateDrugs < ActiveRecord::Migration[5.2]
  def change
    create_table :drugs do |t|
      t.references :drug_type
      t.string :name

      t.timestamps
    end
  end
end
