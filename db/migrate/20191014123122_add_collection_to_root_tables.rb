class AddCollectionToRootTables < ActiveRecord::Migration[6.0]
  def change
    add_column :root_tables, :collections, :string
    add_column :root_tables, :documents, :string
  end
end
