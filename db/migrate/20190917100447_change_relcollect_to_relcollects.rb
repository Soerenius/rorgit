class ChangeRelcollectToRelcollects < ActiveRecord::Migration[6.0]
  def change
    rename_table :relcollect, :relcollects
  end
end
