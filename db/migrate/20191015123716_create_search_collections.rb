class CreateSearchCollections < ActiveRecord::Migration[6.0]
  def change
    create_view :search_collections
  end
end
