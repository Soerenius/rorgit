class RenameObject < ActiveRecord::Migration[6.0]
  def change
    rename_table :object_ts, :objects
  end
end
