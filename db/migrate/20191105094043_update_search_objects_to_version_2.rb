class UpdateSearchObjectsToVersion2 < ActiveRecord::Migration[6.0]
  def change
    update_view :search_objects, version: 2, revert_to_version: 1
  end
end
