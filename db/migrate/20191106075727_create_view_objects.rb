class CreateViewObjects < ActiveRecord::Migration[6.0]
  def change
    create_view :view_objects
  end
end
