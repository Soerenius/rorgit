class RenameRelcollect < ActiveRecord::Migration[6.0]
  def change
    rename_table :relcollect_ts, :relcollects
  end
end
