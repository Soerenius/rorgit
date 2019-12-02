class ChangeRoot < ActiveRecord::Migration[6.0]
  def change
    remove_column :roots, :name
    add_column :roots, :name, :string, after: :guid
  end
end
