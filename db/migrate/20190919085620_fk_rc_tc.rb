class FkRcTc < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :relcollects, :typecollections, column: :guid_typeCollection, primary_key: "guid"
  end
end
