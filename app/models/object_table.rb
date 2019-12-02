<<<<<<< HEAD
#Rails.application.config.active_record.belongs_to_required_by_default = false
class ObjectTable < ApplicationRecord
    self.primary_key='guid'
    belongs_to :root_table, :optional => true
    has_and_belongs_to_many :collections, :optional => true
    
end

=======
class ObjectTable < ApplicationRecord
    self.primary_key='guid'
    belongs_to :root_table, optional: true
    belongs_to :root_object, optional: true
    has_many :relassigncollections
end
>>>>>>> 8e31398c502b5332a4908c846796eb04e6245ac6
