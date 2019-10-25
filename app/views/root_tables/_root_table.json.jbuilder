json.extract! root_table, :id, :guid, :name, :versionDate, :versionId, :description, :created_at, :updated_at
json.url root_table_url(root_table, format: :json)
