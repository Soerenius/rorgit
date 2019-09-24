# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_24_065922) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", primary_key: "guid", id: :string, force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "actors", primary_key: "guid", id: :string, force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "collections", primary_key: "guid", id: :string, force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "externaldocuments", primary_key: "guid", id: :string, force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "measurewithunits", primary_key: "guid", id: :string, force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "object_tables", primary_key: "guid", id: :string, force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "objlistendb4s", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "properties", primary_key: "guid", id: :string, force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "relassigncollections", primary_key: "guid", id: :string, force: :cascade do |t|
    t.string "guid_relObject"
    t.string "guid_relCollection"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "relassignmeasures", primary_key: "guid", id: :string, force: :cascade do |t|
    t.string "guid_relProperty"
    t.string "guid_relMeasure"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "relassignproperties", primary_key: "guid", id: :string, force: :cascade do |t|
    t.string "guid_relProperty"
    t.string "guid_relObject"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "relassignpropertywithvalues", primary_key: "guid", id: :string, force: :cascade do |t|
    t.string "guid_relValue"
    t.string "guid_relProperty"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "relassignunits", primary_key: "guid", id: :string, force: :cascade do |t|
    t.string "guid_relUnit"
    t.string "guid_relMeasure"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "relassignvalues", primary_key: "guid", id: :string, force: :cascade do |t|
    t.string "guid_relMeasure"
    t.string "guid_relValue"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "relassociates", primary_key: "guid", id: :string, force: :cascade do |t|
    t.string "guid_relObject1"
    t.string "guid_relObject2"
    t.string "guid_typeRelAssociates"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "relationships", primary_key: "guid", id: :string, force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "relcollects", primary_key: "guid", id: :string, force: :cascade do |t|
    t.string "guid_relRoot"
    t.string "guid_relCollection"
    t.string "guid_typeCollection"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reldocuments", primary_key: "guid", id: :string, force: :cascade do |t|
    t.string "guid_relDocument"
    t.string "guid_relRoot"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "relsequences", primary_key: "guid", id: :string, force: :cascade do |t|
    t.string "guid_relActivity1"
    t.string "guid_relActivity2"
    t.string "guid_typeRelSequences"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "roots", primary_key: "guid", id: :string, force: :cascade do |t|
    t.string "versionDate"
    t.string "versionId"
    t.string "description"
    t.datetime "created_at", precision: 6, default: -> { "now()" }, null: false
    t.datetime "updated_at", precision: 6, default: -> { "now()" }, null: false
    t.string "name"
  end

  create_table "subjects", id: false, force: :cascade do |t|
    t.string "guid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "typecollections", primary_key: "guid", id: :string, force: :cascade do |t|
    t.string "type"
    t.string "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "typerelassociates", primary_key: "guid", id: :string, force: :cascade do |t|
    t.string "type"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "typerelsequences", primary_key: "guid", id: :string, force: :cascade do |t|
    t.string "type"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "typevalues", primary_key: "guid", id: :string, force: :cascade do |t|
    t.string "type"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "units", primary_key: "guid", id: :string, force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "values", primary_key: "guid", id: :string, force: :cascade do |t|
    t.string "lowerTolerance"
    t.string "nominalValue"
    t.string "upperTolerance"
    t.string "valueType"
    t.string "valueRole"
    t.string "toleranceType"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "collections", "roots", column: "guid", primary_key: "guid"
  add_foreign_key "object_tables", "roots", column: "guid", primary_key: "guid"
  add_foreign_key "relassigncollections", "collections", column: "guid_relCollection", primary_key: "guid"
  add_foreign_key "relassigncollections", "object_tables", column: "guid_relObject", primary_key: "guid"
  add_foreign_key "relassigncollections", "relationships", column: "guid", primary_key: "guid"
  add_foreign_key "relassignmeasures", "measurewithunits", column: "guid_relMeasure", primary_key: "guid"
  add_foreign_key "relassignmeasures", "properties", column: "guid_relProperty", primary_key: "guid"
  add_foreign_key "relassignmeasures", "relationships", column: "guid", primary_key: "guid"
  add_foreign_key "relassignproperties", "properties", column: "guid_relProperty", primary_key: "guid"
  add_foreign_key "relassignproperties", "relationships", column: "guid", primary_key: "guid"
  add_foreign_key "relassignpropertywithvalues", "\"values\"", column: "guid_relValue", primary_key: "guid"
  add_foreign_key "relassignpropertywithvalues", "properties", column: "guid_relProperty", primary_key: "guid"
  add_foreign_key "relassignpropertywithvalues", "relationships", column: "guid", primary_key: "guid"
  add_foreign_key "relassignunits", "measurewithunits", column: "guid_relMeasure", primary_key: "guid"
  add_foreign_key "relassignunits", "relationships", column: "guid", primary_key: "guid"
  add_foreign_key "relassignunits", "units", column: "guid_relUnit", primary_key: "guid"
  add_foreign_key "relassignvalues", "\"values\"", column: "guid_relValue", primary_key: "guid"
  add_foreign_key "relassignvalues", "measurewithunits", column: "guid_relMeasure", primary_key: "guid"
  add_foreign_key "relassignvalues", "relationships", column: "guid", primary_key: "guid"
  add_foreign_key "relassociates", "relationships", column: "guid", primary_key: "guid"
  add_foreign_key "relassociates", "typerelassociates", column: "guid_typeRelAssociates", primary_key: "guid"
  add_foreign_key "relationships", "roots", column: "guid", primary_key: "guid"
  add_foreign_key "relcollects", "collections", column: "guid_relCollection", primary_key: "guid"
  add_foreign_key "relcollects", "relationships", column: "guid", primary_key: "guid"
  add_foreign_key "relcollects", "roots", column: "guid_relRoot", primary_key: "guid"
  add_foreign_key "relcollects", "typecollections", column: "guid_typeCollection", primary_key: "guid"
  add_foreign_key "reldocuments", "externaldocuments", column: "guid_relDocument", primary_key: "guid"
  add_foreign_key "reldocuments", "relationships", column: "guid", primary_key: "guid"
  add_foreign_key "reldocuments", "roots", column: "guid_relRoot", primary_key: "guid"
  add_foreign_key "relsequences", "activities", column: "guid_relActivity1", primary_key: "guid"
  add_foreign_key "relsequences", "activities", column: "guid_relActivity2", primary_key: "guid"
  add_foreign_key "relsequences", "relationships", column: "guid", primary_key: "guid"
  add_foreign_key "relsequences", "typerelsequences", column: "guid_typeRelSequences", primary_key: "guid"
  add_foreign_key "values", "typevalues", column: "valueType", primary_key: "guid"
end
