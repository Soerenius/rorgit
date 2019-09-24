class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties, :primary_key => :guid, id: false do |t|
      t.string :guid
      t.timestamps
    end
  end
end
