class UpdateViewObjectIdsToVersion2 < ActiveRecord::Migration[6.0]
  def change
    update_view :view_object_ids, version: 2, revert_to_version: 1
  end
end
