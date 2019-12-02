class CreateMeasurewithunits < ActiveRecord::Migration[6.0]
  def change
    create_table :measurewithunits, id: false do |t|
      t.string :guid

      t.timestamps
    end
    execute "ALTER TABLE measurewithunits ADD PRIMARY KEY (guid);"
  end
end
