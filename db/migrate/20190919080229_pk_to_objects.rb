class PkToObjects < ActiveRecord::Migration[6.0]
  def change
    execute "ALTER TABLE objects ADD PRIMARY KEY (guid);"
  end
end
