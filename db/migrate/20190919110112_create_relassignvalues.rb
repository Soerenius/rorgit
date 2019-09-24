class CreateRelassignvalues < ActiveRecord::Migration[6.0]
  def change
    create_table :relassignvalues, id: false do |t|
      t.string :guid
      t.string :guid_relMeasure
      t.string :guid_relValue

      t.timestamps
    end
    execute "ALTER TABLE relassignvalues ADD PRIMARY KEY (guid);"
    add_foreign_key :relassignvalues, :relationships, column: :guid, primary_key: "guid"
    add_foreign_key :relassignvalues, :measurewithunits, column: :guid_relMeasure, primary_key: "guid"
    add_foreign_key :relassignvalues, :values, column: :guid_relValue, primary_key: "guid"
  end
end
