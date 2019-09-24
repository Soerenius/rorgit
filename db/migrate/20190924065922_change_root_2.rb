class ChangeRoot2 < ActiveRecord::Migration[6.0]
  def change
    change_column :roots, :name, :string, after: :guid
  end
end
