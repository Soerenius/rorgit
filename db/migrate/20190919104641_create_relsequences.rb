class CreateRelsequences < ActiveRecord::Migration[6.0]
  def change
    create_table :relsequences, id: false do |t|
      t.string :guid
      t.string :guid_relActivity1
      t.string :guid_relActivity2
      t.string :guid_typeRelSequences

      t.timestamps
    end
    execute "ALTER TABLE relsequences ADD PRIMARY KEY (guid);"
    add_foreign_key :relsequences, :relationships, column: :guid, primary_key: "guid"
    add_foreign_key :relsequences, :activities, column: :guid_relActivity1, primary_key: "guid"
    add_foreign_key :relsequences, :activities, column: :guid_relActivity2, primary_key: "guid"
    add_foreign_key :relsequences, :typerelsequences, column: :guid_typeRelSequences, primary_key: "guid"

  end
end
