class CreateRelassociates < ActiveRecord::Migration[6.0]
  def change
    create_table :relassociates, id: false do |t|
      t.string :guid
      t.string :guid_relObject1
      t.string :guid_relObject2
      t.string :guid_typeRelAssociates

      t.timestamps
    end
    execute "ALTER TABLE relassociates ADD PRIMARY KEY (guid);"
    add_foreign_key :relassociates, :relationships, column: :guid, primary_key: "guid"
    add_foreign_key :relassociates, :objects, column: :guid_relObject1, primary_key: "guid"
    add_foreign_key :relassociates, :objects, column: :guid_relObject2, primary_key: "guid"
    add_foreign_key :relassociates, :typerelassociates, column: :guid_typeRelAssociates, primary_key: "guid"
  end
end
