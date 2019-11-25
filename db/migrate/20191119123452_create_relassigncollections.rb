class CreateRelassigncollections < ActiveRecord::Migration[6.0]
  def change
    create_table :relassigncollections, id: false do |t|
      t.string :guid
      t.string :guid_relobject
      t.string :guid_relcollection

      t.timestamps
    end
    execute "ALTER TABLE relassigncollections ADD PRIMARY KEY (guid);"
    add_foreign_key :relassigncollections, :object_tables, column: :guid_relobject, primary_key: "guid"
    add_foreign_key :relassigncollections, :collections, column: :guid_relcollection, primary_key: "guid"
  end
end
