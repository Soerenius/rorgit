class RootTablesController < InheritedResources::Base

  private

    def root_table_params
      params.require(:root_table).permit(:guid, :name, :versiondate, :versionid, :description)
    end

end
