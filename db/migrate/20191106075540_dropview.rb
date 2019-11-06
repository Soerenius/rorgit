class Dropview < ActiveRecord::Migration[6.0]
  def change
    drop_view :search_object
  end
end
