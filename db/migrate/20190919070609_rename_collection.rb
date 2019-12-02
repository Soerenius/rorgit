class RenameCollection < ActiveRecord::Migration[6.0]
  def change
    rename_table :collection_ts, :collections
  end
end
