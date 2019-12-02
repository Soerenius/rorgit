class CreateViewObjectIds < ActiveRecord::Migration[6.0]
  def change
    create_view :view_object_ids
  end
end
