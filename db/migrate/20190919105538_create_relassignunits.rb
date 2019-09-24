class CreateRelassignunits < ActiveRecord::Migration[6.0]
  def change
    create_table :relassignunits, id: false do |t|
      t.string :guid
      t.string :guid_relUnit
      t.string :guid_relMeasure

      t.timestamps
    end
    execute "ALTER TABLE relassignunits ADD PRIMARY KEY (guid);"
    add_foreign_key :relassignunits, :relationships, column: :guid, primary_key: "guid"
    add_foreign_key :relassignunits, :units, column: :guid_relUnit, primary_key: "guid"
    add_foreign_key :relassignunits, :measurewithunits, column: :guid_relMeasure, primary_key: "guid"
  end
end
