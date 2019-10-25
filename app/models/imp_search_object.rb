class ImpSearchObject < ApplicationRecord

    def search_root_tables

        root_tables = RootTable.all

        root_tables = root_tables.where(["name ILIKE ?","%#{name}%"]) if name.present?
        root_tables = root_tables.where(["description LIKE ?",description]) if description.present?

        return root_tables

    end    

end
