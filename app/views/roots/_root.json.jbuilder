json.extract! root, :id, :guid, :name, :versionDate, :versionId, :description, :created_at, :updated_at
json.url root_url(root, format: :json)
