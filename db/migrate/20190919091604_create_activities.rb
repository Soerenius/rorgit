class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities, id: false do |t|
      t.string :guid

      t.timestamps
    end
    execute "ALTER TABLE activities ADD PRIMARY KEY (guid);"
  end
end
