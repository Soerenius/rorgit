class CreateRelassignpropertywithvalues < ActiveRecord::Migration[6.0]
  def change
    create_table :relassignpropertywithvalues, id: false do |t|
      t.string :guid
      t.string :guid_relValue
      t.string :guid_relProperty

      t.timestamps
    end
    execute "ALTER TABLE properties ADD PRIMARY KEY (guid);"
    execute "ALTER TABLE relassignpropertywithvalues ADD PRIMARY KEY (guid);"
    add_foreign_key :relassignpropertywithvalues, :relationships, column: :guid, primary_key: "guid"
    add_foreign_key :relassignpropertywithvalues, :values, column: :guid_relValue, primary_key: "guid"
    add_foreign_key :relassignpropertywithvalues, :properties, column: :guid_relProperty, primary_key: "guid"
  end
end
