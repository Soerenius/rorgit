class CreateRelassigncollections < ActiveRecord::Migration[6.0]
  def change
    create_table :relassigncollections, id: false do |t|
      t.string :guid
      t.string :guid_relObject
      t.string :guid_relCollection

      t.timestamps
    end
    execute "ALTER TABLE relassigncollections ADD PRIMARY KEY (guid);"
    add_foreign_key :relassigncollections, :roots, column: :guid, primary_key: "guid"
    add_foreign_key :relassigncollections, :objects, column: :guid_relObject, primary_key: "guid"
    add_foreign_key :relassigncollections, :collections, column: :guid_relCollection, primary_key: "guid"
  end
end