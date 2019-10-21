class ObjectTable < ApplicationRecord
    self.primary_key='guid'
    belongs_to :root_table, optional: true
    belongs_to :root_object, optional: true
end
