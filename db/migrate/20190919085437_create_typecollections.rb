class CreateTypecollections < ActiveRecord::Migration[6.0]
  def change
    create_table :typecollections, id: false do |t|
      t.string :guid
      t.string :type
      t.string :text

      t.timestamps
    end
    execute "ALTER TABLE typecollections ADD PRIMARY KEY (guid);"
  end
end
