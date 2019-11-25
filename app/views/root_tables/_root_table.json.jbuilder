json.extract! root_table, :id, :guid, :name, :versiondate, :versionid, :description, :created_at, :updated_at
json.url root_table_url(root_table, format: :json)
