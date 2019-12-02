class Collection < ApplicationRecord
    self.primary_key='guid'
<<<<<<< HEAD
    belongs_to :root_table, :optional => true
    has_and_belongs_to_many :object_tables, :optional => true
=======
    belongs_to :root_table, optional: true
    belongs_to :root_object, optional: true
    has_many :relassigncollections
>>>>>>> 8e31398c502b5332a4908c846796eb04e6245ac6
end
