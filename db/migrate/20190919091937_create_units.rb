class CreateUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :units, id: false do |t|
      t.string :guid

      t.timestamps
    end
    execute "ALTER TABLE units ADD PRIMARY KEY (guid);"
  end
end
