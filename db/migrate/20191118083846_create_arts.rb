class CreateArts < ActiveRecord::Migration[6.0]
  def change
    create_table :arts do |t|
      t.string :art

      t.timestamps
    end
  end
end
