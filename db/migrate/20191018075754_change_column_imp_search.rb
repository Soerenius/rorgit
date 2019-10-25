class ChangeColumnImpSearch < ActiveRecord::Migration[6.0]
  def change
    rename_column :imp_search_objects, :gruppe, :description
  end
end
