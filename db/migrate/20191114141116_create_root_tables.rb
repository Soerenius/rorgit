class CreateRootTables < ActiveRecord::Migration[6.0]
  def change
    create_table :root_tables, id: false do |t|
      t.string :guid
      t.string :name
      t.string :versiondate
      t.string :versionid
      t.string :description

      t.timestamps
    end
    execute "ALTER TABLE root_tables ADD PRIMARY KEY (guid);"
  end
end
