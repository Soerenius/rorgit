class Addforeignkey < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :relcollects, :roots, column: :guid_relRoot, primary_key: "guid"
    add_foreign_key :relcollects, :collections, column: :guid_relCollection, primary_key: "guid"
  end
end
