class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects, :primary_key => :guid, id: false do |t|
      t.string :guid
      t.timestamps
    end
  end
end
