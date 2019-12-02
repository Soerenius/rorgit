class Removefk1 < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :relassigncollections, name: "fk_rails_701d79812b"
  end
end
