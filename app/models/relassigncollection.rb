class Relassigncollection < ApplicationRecord
    self.primary_key='guid'
<<<<<<< HEAD
    belongs_to :object_table, :optional => true
    belongs_to :collection, :optional => true
=======
    belongs_to :object_table
    belongs_to :collection
    belongs_to :search_collection
>>>>>>> 8e31398c502b5332a4908c846796eb04e6245ac6
end
