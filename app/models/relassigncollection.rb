class Relassigncollection < ApplicationRecord
    self.primary_key='guid'
    belongs_to :object_table, :optional => true
    belongs_to :collection, :optional => true
end
