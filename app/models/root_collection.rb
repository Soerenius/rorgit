class RootCollection < ApplicationRecord
    self.primary_key='guid'
    has_one :object_table, foreign_key: "guid"
    has_one :collection, foreign_key: "guid"
    accepts_nested_attributes_for :object_table

end
