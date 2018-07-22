# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_07_22_190838) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attribute_groups", force: :cascade do |t|
    t.bigint "drug_type_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["drug_type_id"], name: "index_attribute_groups_on_drug_type_id"
  end

  create_table "attribute_values", force: :cascade do |t|
    t.bigint "attribute_id"
    t.text "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "note_id"
    t.index ["attribute_id"], name: "index_attribute_values_on_attribute_id"
    t.index ["note_id"], name: "index_attribute_values_on_note_id"
  end

  create_table "attributes", force: :cascade do |t|
    t.bigint "attribute_group_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attribute_group_id"], name: "index_attributes_on_attribute_group_id"
  end

  create_table "drug_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drugs", force: :cascade do |t|
    t.bigint "drug_type_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["drug_type_id"], name: "index_drugs_on_drug_type_id"
  end

  create_table "notes", force: :cascade do |t|
    t.string "symbol"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "attribute_values", "notes"
end
