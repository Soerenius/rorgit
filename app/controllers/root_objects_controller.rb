class RootObjectsController < ApplicationController
  before_action :set_root_object, only: [:show, :edit, :update, :destroy]

  # GET /root_objects
  # GET /root_objects.json
  def index
    #@root_objects = RootTable.all
    #@root_objects = RootTable.joins("INNER JOIN object_tables ON root_tables.guid=object_tables.guid")
    @root_objects = RootTable.search_objects(params[:search_objects])
    respond_to do |format|
      format.xlsx {
        response.headers[
          'Content-Disposition'
        ] = "attachment; filename='items.xlsx'"
      }
      format.html { render :index }
    end
  end

  # GET /root_objects/1
  # GET /root_objects/1.json
  def show
    @root_objects = RootObject.find(params[:id])  
  end

  # GET /root_objects/new
  def new
    @root_object = RootObject.new
  end

  # GET /root_objects/1/edit
  def edit
  end

  # POST /root_objects
  # POST /root_objects.json
  def create
    @root_object = RootObject.new(root_object_params)

    respond_to do |format|
      if @root_object.save
        format.html { redirect_to @root_object, notice: 'Root object was successfully created.' }
        format.json { render :show, status: :created, location: @root_object }
      else
        format.html { render :new }
        format.json { render json: @root_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /root_objects/1
  # PATCH/PUT /root_objects/1.json
  def update
    respond_to do |format|
      if @root_object.update(root_object_params)
        format.html { redirect_to @root_object, notice: 'Root object was successfully updated.' }
        format.json { render :show, status: :ok, location: @root_object }
      else
        format.html { render :edit }
        format.json { render json: @root_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /root_objects/1
  # DELETE /root_objects/1.json
  def destroy
    @root_object.destroy
    respond_to do |format|
      format.html { redirect_to root_objects_url, notice: 'Root object was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_root_object
      @root_object = RootObject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def root_object_params
      params.require(:root_object).permit(:guid, :name, :versiondate, :versionid, :description)
    end
end
