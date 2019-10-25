class Renameroots2 < ActiveRecord::Migration[6.0]
  def change
    rename_table :root_table, :root_tables
  end
end
