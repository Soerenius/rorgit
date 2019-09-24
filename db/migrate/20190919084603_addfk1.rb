class Addfk1 < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :relcollects, :relationships, column: :guid, primary_key: "guid"
    add_foreign_key :relassigncollections, :relationships, column: :guid, primary_key: "guid"
  end
end
