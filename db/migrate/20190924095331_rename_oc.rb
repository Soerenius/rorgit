class RenameOc < ActiveRecord::Migration[6.0]
  def change
    rename_column :relassigncollections, :guid_relObject, :guid_relobject
    rename_column :relassigncollections, :guid_relCollection, :guid_relcollection
  end
end
