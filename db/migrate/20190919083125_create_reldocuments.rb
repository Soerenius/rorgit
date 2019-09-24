class CreateReldocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :reldocuments, id: false do |t|
      t.string :guid
      t.string :guid_relDocument
      t.string :guid_relRoot

      t.timestamps
    end
    execute "ALTER TABLE reldocuments ADD PRIMARY KEY (guid);"
    add_foreign_key :reldocuments, :roots, column: :guid_relRoot, primary_key: "guid"
    add_foreign_key :reldocuments, :externaldocuments, column: :guid_relDocument, primary_key: "guid"
    add_foreign_key :reldocuments, :relationships, column: :guid, primary_key: "guid"
  end
end
