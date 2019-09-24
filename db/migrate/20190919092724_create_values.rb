class CreateValues < ActiveRecord::Migration[6.0]
  def change
    create_table :values, id: false do |t|
      t.string :guid
      t.string :lowerTolerance
      t.string :nominalValue
      t.string :upperTolerance
      t.string :valueType
      t.string :valueRole
      t.string :toleranceType

      t.timestamps
    end
    execute "ALTER TABLE values ADD PRIMARY KEY (guid);"
  end
end
