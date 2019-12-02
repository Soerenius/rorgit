class CreateActors < ActiveRecord::Migration[6.0]
  def change
    create_table :actors, id: false do |t|
      t.string :guid

      t.timestamps
    end
    execute "ALTER TABLE actors ADD PRIMARY KEY (guid);"
  end
end
