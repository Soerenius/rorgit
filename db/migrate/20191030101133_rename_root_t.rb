class RenameRootT < ActiveRecord::Migration[6.0]
  def change
    rename_column :root_tables, :collections, :collection
    rename_column :root_tables, :documents, :document
  end
end
