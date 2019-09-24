class CreateTypevalues < ActiveRecord::Migration[6.0]
  def change
    create_table :typevalues, id: false do |t|
      t.string :guid
      t.string :type
      t.text :description

      t.timestamps
    end
    execute "ALTER TABLE typevalues ADD PRIMARY KEY (guid);"
  end
end
