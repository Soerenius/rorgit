class Deleterc < ActiveRecord::Migration[6.0]
  def change
    execute "DELETE FROM relcollect_ts;"
  end
end
