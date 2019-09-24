class FkRcRoots < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :relcollects, :roots, column: :guid, primary_key: "guid"
  end
end
