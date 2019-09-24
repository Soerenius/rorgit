class CreateRelcollectTs < ActiveRecord::Migration[6.0]
  def change
    create_table :relcollect_ts, id: false do |t|
      t.string :guid
      t.string :guid_relRoot
      t.string :guid_relCollection
      t.string :guid_typeCollection

      t.timestamps
    end
    execute "ALTER TABLE relcollect_ts ADD PRIMARY KEY (guid);"
  end
end
