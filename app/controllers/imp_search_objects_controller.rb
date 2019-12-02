class ImpSearchObjectsController < ApplicationController

    def new
        @imp_search_object = ImpSearchObject.new       
        @descriptions = RootTable.distinct.pluck(:description)
    end

    def create
        @imp_search_object = ImpSearchObject.create(imp_search_object_params)
        redirect_to@imp_search_object
    end

    def show
        @imp_search_object = ImpSearchObject.find(params[:id])
    end

    private

    def imp_search_object_params
        params.require(:imp_search_object).permit(:name, :description)
    end

end
