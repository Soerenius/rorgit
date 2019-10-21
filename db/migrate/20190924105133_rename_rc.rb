class RenameRc < ActiveRecord::Migration[6.0]
  def change
    rename_column :relcollects, :guid_relRoot, :guid_relroot
    rename_column :relcollects, :guid_relCollection, :guid_relcollection
    rename_column :relcollects, :guid_typeCollection, :guid_typecollection
  end
end
