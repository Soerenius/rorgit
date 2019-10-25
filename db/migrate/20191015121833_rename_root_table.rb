class RenameRootTable < ActiveRecord::Migration[6.0]
  def change
    rename_column :root_tables, :versionDate, :versiondate
    rename_column :root_tables, :versionId, :versionid
  end
end
