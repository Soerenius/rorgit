class FkToRelcollect < ActiveRecord::Migration[6.0]
  def change
    #execute "ALTER TABLE relcollect_ts ADD CONSTRINT fk_roots FOREIGN KEY (guid_relRoot) REFERENCES roots(guid);"
    #execute "ALTER TABLE relcollect_ts ADD CONSTRINT fk_collections FOREIGN KEY (guid_relCollection) REFERENCES collection_ts(guid);"
    add_foreign_key :relcollect_ts, :roots, column: :guid_relRoot, primary_key: "guid"
    add_foreign_key :relcollect_ts, :collection_ts, column: :guid_relCollection, primary_key: "guid"
  end
end
