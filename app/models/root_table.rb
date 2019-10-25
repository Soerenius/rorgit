class RootTable < ApplicationRecord
    self.primary_key='guid'
    has_one :object_table, foreign_key: "guid"
    has_one :collection, foreign_key: "guid"
    accepts_nested_attributes_for :object_table

    include PgSearch::Model 
    
    RootTable.joins("INNER JOIN object_tables ON root_tables.guid=object_tables.guid")

    def self.search(search)
      if search
        where(["name ILIKE ?","%#{search}%"])
      else
        #all
        none
        #RootTable.joins("INNER JOIN object_tables ON root_tables.guid=object_tables.guid")
      end
    end

    def self.search_objects(search_objects)
      if search_objects
        RootTable.joins("INNER JOIN object_tables ON root_tables.guid=object_tables.guid")
        .where(["name ILIKE ?","%#{search_objects}%"])
      else
        #all
        #none
        RootTable.joins("INNER JOIN object_tables ON root_tables.guid=object_tables.guid")
      end
    end

    def self.search_collections(search_collections)
      if search_collections
        RootTable.joins("INNER JOIN collections ON root_tables.guid=collections.guid")
        .where(["name ILIKE ?","%#{search_collections}%"])
      else
        #all
        #none
        RootTable.joins("INNER JOIN collections ON root_tables.guid=collections.guid")
      end
    end
    
    def self.search_externaldocuments(search_externaldocuments)
      if search_externaldocuments
        RootTable.joins("INNER JOIN externaldocuments ON root_tables.guid=externaldocuments.guid")
        .where(["name ILIKE ?","%#{search_externaldocuments}%"])
      else
        #all
        #none
        RootTable.joins("INNER JOIN externaldocuments ON root_tables.guid=externaldocuments.guid")
      end
    end    
end
