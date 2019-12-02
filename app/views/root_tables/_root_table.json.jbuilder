<<<<<<< HEAD
json.extract! root_table, :id, :guid, :name, :versiondate, :versionid, :description, :created_at, :updated_at
=======
json.extract! root_table, :id, :guid, :name, :versionDate, :versionId, :description, :created_at, :updated_at
>>>>>>> 8e31398c502b5332a4908c846796eb04e6245ac6
json.url root_table_url(root_table, format: :json)
