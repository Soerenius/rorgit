class DoppelteObjectsController < ApplicationController
  before_action :set_doppelte_object, only: [:show, :edit, :update, :destroy]

  # GET /doppelte_objects
  # GET /doppelte_objects.json
  def index
    @doppelte_objects = RootTable.find_by_sql("SELECT MAX(r.guid) as guid, r.name, COUNT(r.name) as vorkommen
    FROM root_tables r, object_tables o
    WHERE r.guid=o.guid
    GROUP BY r.name
    HAVING COUNT(r.name)>1")
    respond_to do |format|
      format.xlsx {
        response.headers[
          'Content-Disposition'
        ] = "attachment; filename='items.xlsx'"
      }
      format.html { render :index }
    end
  end

  # GET /doppelte_objects/1
  # GET /doppelte_objects/1.json
  def show
  end

  # GET /doppelte_objects/new
  def new
    @doppelte_object = DoppelteObject.new
  end

  # GET /doppelte_objects/1/edit
  def edit
  end

  # POST /doppelte_objects
  # POST /doppelte_objects.json
  def create
    @doppelte_object = DoppelteObject.new(doppelte_object_params)

    respond_to do |format|
      if @doppelte_object.save
        format.html { redirect_to @doppelte_object, notice: 'Doppelte object was successfully created.' }
        format.json { render :show, status: :created, location: @doppelte_object }
      else
        format.html { render :new }
        format.json { render json: @doppelte_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doppelte_objects/1
  # PATCH/PUT /doppelte_objects/1.json
  def update
    respond_to do |format|
      if @doppelte_object.update(doppelte_object_params)
        format.html { redirect_to @doppelte_object, notice: 'Doppelte object was successfully updated.' }
        format.json { render :show, status: :ok, location: @doppelte_object }
      else
        format.html { render :edit }
        format.json { render json: @doppelte_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doppelte_objects/1
  # DELETE /doppelte_objects/1.json
  def destroy
    @doppelte_object.destroy
    respond_to do |format|
      format.html { redirect_to doppelte_objects_url, notice: 'Doppelte object was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doppelte_object
      @doppelte_object = DoppelteObject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doppelte_object_params
      params.fetch(:doppelte_object, {})
    end
end
