class ViewObject < ApplicationRecord
    self.primary_key = 'guid'
    belongs_to :search_collection
end
