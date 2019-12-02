class CreateTyperelsequences < ActiveRecord::Migration[6.0]
  def change
    create_table :typerelsequences, id: false do |t|
      t.string :guid
      t.string :type
      t.text :description

      t.timestamps
    end
    execute "ALTER TABLE typerelsequences ADD PRIMARY KEY (guid);"
  end
end
