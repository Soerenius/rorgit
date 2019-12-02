class RenameColumnReldocuments < ActiveRecord::Migration[6.0]
  def change
    rename_column :reldocuments, :guid_relRoot, :guid_relroot
    rename_column :reldocuments, :guid_relDocument, :guid_reldocument
  end
end
