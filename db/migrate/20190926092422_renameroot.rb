class Renameroot < ActiveRecord::Migration[6.0]
  def change
    rename_table :roots, :root_table
  end
end
