class ImportCsvRoots < ActiveRecord::Migration[6.0]
  def change
    execute "COPY roots FROM 'D:/Daten/LandBIM/AP 1/RoR/Import/Objekte/Roots_Objekte/roots_objekte.csv'
    WITH (FORMAT csv, DELIMITER ',');"
  end
end
