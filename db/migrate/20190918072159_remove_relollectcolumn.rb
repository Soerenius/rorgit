class RemoveRelollectcolumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :relcollects, :root_id
    remove_column :relcollects, :collection_id
  end
end
