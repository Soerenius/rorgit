class CreateTyperelassociates < ActiveRecord::Migration[6.0]
  def change
    create_table :typerelassociates, id: false do |t|
      t.string :guid
      t.string :type
      t.text :description

      t.timestamps
    end
    execute "ALTER TABLE typerelassociates ADD PRIMARY KEY (guid);"
  end
end
