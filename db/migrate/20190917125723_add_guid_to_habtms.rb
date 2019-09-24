class AddGuidToHabtms < ActiveRecord::Migration[6.0]
  def change
    add_column(:habtms, :guid, :string)
  end
end
