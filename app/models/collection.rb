class Collection < ApplicationRecord
    self.primary_key='guid'
    belongs_to :root_table, :optional => true
    has_and_belongs_to_many :object_tables
end
