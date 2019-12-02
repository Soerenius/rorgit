class Removefk2 < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :relcollects, name: "fk_rails_8384d15fd7"
  end
end
