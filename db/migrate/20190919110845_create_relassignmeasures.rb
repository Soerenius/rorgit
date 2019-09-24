class CreateRelassignmeasures < ActiveRecord::Migration[6.0]
  def change
    create_table :relassignmeasures, id: false do |t|
      t.string :guid
      t.string :guid_relProperty
      t.string :guid_relMeasure

      t.timestamps
    end
    execute "ALTER TABLE relassignmeasures ADD PRIMARY KEY (guid);"
    add_foreign_key :relassignmeasures, :relationships, column: :guid, primary_key: "guid"
    add_foreign_key :relassignmeasures, :properties, column: :guid_relProperty, primary_key: "guid"
    add_foreign_key :relassignmeasures, :measurewithunits, column: :guid_relMeasure, primary_key: "guid"
  end
end
