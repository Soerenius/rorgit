class RootTable < ApplicationRecord
    self.primary_key='guid'
<<<<<<< HEAD
    has_one :object_table, autosave: true, foreign_key: 'guid', dependent: :delete
    has_one :collection, autosave: true, foreign_key: 'guid', dependent: :delete
    #after_save :update_object
    has_one :art, foreign_key: 'id'
    

    #def update_object
    #    if params[:root_table][:art].Value == 'Fachobjekt'
    #      ObjectTable.create(:guid => self.guid)
       # elsif params[:root_table][:art] == 'Gruppe'
       # elsif params[:root_table][:art] == 'Externes Dokument'
    #   end
    #end
=======
    has_many :object_tables, foreign_key: "guid"
    has_many :collections, foreign_key: "guid"
    accepts_nested_attributes_for :object_tables

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
>>>>>>> 8e31398c502b5332a4908c846796eb04e6245ac6
end
