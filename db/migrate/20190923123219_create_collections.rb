class CreateCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :collections, id: false do |t|
      t.string :guid

      t.timestamps
    end
    execute "ALTER TABLE collections ADD PRIMARY KEY (guid);"
    add_foreign_key :collections, :roots, column: :guid, primary_key: "guid"
  end
end
