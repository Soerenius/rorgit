class CreateDoppelteObjects < ActiveRecord::Migration[6.0]
  def change
    create_table :doppelte_objects, :primary_key => :guid, id: false do |t|
      t.string :guid
      t.string :name
      t.string :versiondate
      t.string :versionid
      t.string :description
      t.timestamps
    end
  end
end
