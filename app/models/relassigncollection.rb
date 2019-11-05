class Relassigncollection < ApplicationRecord
    self.primary_key='guid'
    belongs_to :object_table
    belongs_to :collection
    belongs_to :search_collection
end
