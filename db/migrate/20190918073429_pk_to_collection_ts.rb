class PkToCollectionTs < ActiveRecord::Migration[6.0]
  def change
    execute "ALTER TABLE collection_ts ADD PRIMARY KEY (guid);"
  end
end
