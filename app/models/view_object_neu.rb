class ViewObjectNeu < ApplicationRecord
    self.primary_key = 'view_collection_id'
    belongs_to :view_collection   
end
