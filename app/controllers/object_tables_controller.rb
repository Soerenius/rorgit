class ObjectTablesController < InheritedResources::Base

  private

    def object_table_params
      params.require(:object_table).permit(:guid)
    end

end
