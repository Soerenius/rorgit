class CreateRelassignproperties < ActiveRecord::Migration[6.0]
  def change
    create_table :relassignproperties, id: false do |t|
      t.string :guid
      t.string :guid_relProperty
      t.string :guid_relObject

      t.timestamps
    end
    execute "ALTER TABLE relassignproperties ADD PRIMARY KEY (guid);"
    add_foreign_key :relassignproperties, :relationships, column: :guid, primary_key: "guid"
    add_foreign_key :relassignproperties, :properties, column: :guid_relProperty, primary_key: "guid"
    add_foreign_key :relassignproperties, :objects, column: :guid_relObject, primary_key: "guid"
  end
end
