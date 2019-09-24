class AddfkToRelcollectTs < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :relcollect_ts, :roots, column: :guid_relRoot, primary_key: "guid"
    add_foreign_key :relcollect_ts, :collection_ts, column: :guid_relCollection, primary_key: "guid"
  end
end
