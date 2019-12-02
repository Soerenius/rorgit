#Rails.application.config.active_record.belongs_to_required_by_default = false
class ObjectTable < ApplicationRecord
    self.primary_key='guid'
    belongs_to :root_table, :optional => true
    has_and_belongs_to_many :collections, :optional => true
    
end

