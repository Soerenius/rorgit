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

ActiveRecord::Schema.define(version: 2019_11_05_094043) do

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

  create_table "doppelte_objects", id: false, force: :cascade do |t|
    t.string "guid"
    t.string "name"
    t.string "versiondate"
    t.string "versionid"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "externaldocuments", primary_key: "guid", id: :string, force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "imp_search_objects", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "measurewithunits", primary_key: "guid", id: :string, force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "no_groups", id: false, force: :cascade do |t|
    t.string "guid"
    t.string "name"
    t.string "versiondate"
    t.string "versionid"
    t.string "description"
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
    t.string "guid_relobject"
    t.string "guid_relcollection"
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
    t.string "guid_relroot"
    t.string "guid_relcollection"
    t.string "guid_typecollection"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reldocuments", primary_key: "guid", id: :string, force: :cascade do |t|
    t.string "guid_reldocument"
    t.string "guid_relroot"
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

  create_table "root_collections", id: false, force: :cascade do |t|
    t.string "guid"
    t.string "name"
    t.string "versiondate"
    t.string "versionid"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "root_externaldocuments", id: false, force: :cascade do |t|
    t.string "guid"
    t.string "name"
    t.string "versiondate"
    t.string "versionid"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "root_objects", id: false, force: :cascade do |t|
    t.string "guid"
    t.string "name"
    t.string "versiondate"
    t.string "versionid"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "root_tables", primary_key: "guid", id: :string, force: :cascade do |t|
    t.string "versiondate"
    t.string "versionid"
    t.string "description"
    t.datetime "created_at", precision: 6, default: -> { "now()" }, null: false
    t.datetime "updated_at", precision: 6, default: -> { "now()" }, null: false
    t.string "name"
    t.string "collection"
    t.string "document"
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

  add_foreign_key "collections", "root_tables", column: "guid", primary_key: "guid"
  add_foreign_key "object_tables", "root_tables", column: "guid", primary_key: "guid"
  add_foreign_key "relassigncollections", "collections", column: "guid_relcollection", primary_key: "guid"
  add_foreign_key "relassigncollections", "object_tables", column: "guid_relobject", primary_key: "guid"
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
  add_foreign_key "relationships", "root_tables", column: "guid", primary_key: "guid"
  add_foreign_key "relcollects", "collections", column: "guid_relcollection", primary_key: "guid"
  add_foreign_key "relcollects", "relationships", column: "guid", primary_key: "guid"
  add_foreign_key "relcollects", "root_tables", column: "guid_relroot", primary_key: "guid"
  add_foreign_key "relcollects", "typecollections", column: "guid_typecollection", primary_key: "guid"
  add_foreign_key "reldocuments", "externaldocuments", column: "guid_reldocument", primary_key: "guid"
  add_foreign_key "reldocuments", "relationships", column: "guid", primary_key: "guid"
  add_foreign_key "reldocuments", "root_tables", column: "guid_relroot", primary_key: "guid"
  add_foreign_key "relsequences", "activities", column: "guid_relActivity1", primary_key: "guid"
  add_foreign_key "relsequences", "activities", column: "guid_relActivity2", primary_key: "guid"
  add_foreign_key "relsequences", "relationships", column: "guid", primary_key: "guid"
  add_foreign_key "relsequences", "typerelsequences", column: "guid_typeRelSequences", primary_key: "guid"
  add_foreign_key "values", "typevalues", column: "valueType", primary_key: "guid"

  create_view "zuordnung", sql_definition: <<-SQL
      SELECT r1.name,
      string_agg((r2.name)::text, ','::text) AS string_agg
     FROM root_tables r1,
      root_tables r2,
      object_tables o,
      relassigncollections rac,
      collections c
    WHERE (((r1.guid)::text = (o.guid)::text) AND ((o.guid)::text = (rac.guid_relobject)::text) AND ((rac.guid_relcollection)::text = (c.guid)::text) AND ((r2.guid)::text = (c.guid)::text))
    GROUP BY r1.name;
  SQL
  create_view "search_collections", sql_definition: <<-SQL
      SELECT r.name,
      r.versiondate,
      r.versionid,
      r.description,
      r.collection AS collections
     FROM root_tables r,
      collections c
    WHERE ((r.guid)::text = (c.guid)::text);
  SQL
  create_view "search_objects", sql_definition: <<-SQL
      SELECT r2.name AS objekt,
      r1.name
     FROM root_tables r1,
      root_tables r2,
      object_tables o,
      relassigncollections rac,
      collections c
    WHERE (((r1.guid)::text = (o.guid)::text) AND ((o.guid)::text = (rac.guid_relobject)::text) AND ((rac.guid_relcollection)::text = (c.guid)::text) AND ((r2.guid)::text = (c.guid)::text));
  SQL
end
