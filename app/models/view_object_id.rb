class ViewObjectId < ApplicationRecord
    self.primary_key = 'search_collection_id'
    belongs_to :view_collection    
end
