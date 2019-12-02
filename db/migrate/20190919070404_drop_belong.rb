class DropBelong < ActiveRecord::Migration[6.0]
  def change
    drop_table :belongs
  end
end
