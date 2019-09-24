class FkToRacCollections < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :relassigncollections, :collections, column: :guid_relCollection, primary_key: "guid"
    add_foreign_key :relassigncollections, :object_tables, column: :guid_relObject, primary_key: "guid"
    add_foreign_key :relationships, :roots, column: :guid, primary_key: "guid"
    add_foreign_key :relcollects, :collections, column: :guid_relCollection, primary_key: "guid"
  end
end
