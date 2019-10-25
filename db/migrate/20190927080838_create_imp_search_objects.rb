class CreateImpSearchObjects < ActiveRecord::Migration[6.0]
  def change
    create_table :imp_search_objects do |t|
      t.string :name
      t.string :gruppe

      t.timestamps
    end
  end
end
