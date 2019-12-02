class SearchObject < ApplicationRecord
    self.primary_key = :guid
    belongs_to :search_collection

    def readonly?
        true
      end
end
