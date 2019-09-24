class FkValueTv < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :values, :typevalues, column: :valueType, primary_key: "guid"
  end
end
