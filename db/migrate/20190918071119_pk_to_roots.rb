class PkToRoots < ActiveRecord::Migration[6.0]
  def change
    execute "ALTER TABLE roots ADD PRIMARY KEY (guid);"
  end
end
