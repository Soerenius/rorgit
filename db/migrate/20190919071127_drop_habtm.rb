class DropHabtm < ActiveRecord::Migration[6.0]
  def change
    drop_table :habtms
  end
end
