class CreateSearchObjects < ActiveRecord::Migration[6.0]
  def change
    create_view :search_objects
  end
end
