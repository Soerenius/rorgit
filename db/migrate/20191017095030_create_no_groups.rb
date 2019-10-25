class CreateNoGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :no_groups, :primary_key => :guid, id: false do |t|
      t.string :guid
      t.string :name
      t.string :versiondate
      t.string :versionid
      t.string :description

      t.timestamps
    end
  end
end
