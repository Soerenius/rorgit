class Collection < ApplicationRecord
    self.primary_key='guid'
    belongs_to :root_table, optional: true
    belongs_to :root_object, optional: true
    has_many :relassigncollections
end
