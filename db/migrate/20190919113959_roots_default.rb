class RootsDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default :roots, :created_at, -> { 'now()' }
    change_column_default :roots, :updated_at, -> { 'now()' }
  end
end
