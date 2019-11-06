class CreateViewCollections < ActiveRecord::Migration[6.0]
  def change
    create_view :view_collections
  end
end
