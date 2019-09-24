class CreateObjectTables < ActiveRecord::Migration[6.0]
  def change
    create_table :object_tables, id: false do |t|
      t.string :guid

      t.timestamps
    end
    execute "ALTER TABLE object_tables ADD PRIMARY KEY (guid);"
    add_foreign_key :object_tables, :roots, column: :guid, primary_key: "guid"
  end
end
