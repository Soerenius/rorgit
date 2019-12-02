class RelassignpropertiesController < ApplicationController
  before_action :set_relassignproperty, only: [:show, :edit, :update, :destroy]

  # GET /relassignproperties
  # GET /relassignproperties.json
  def index
    @relassignproperties = Relassignproperty.all
  end

  # GET /relassignproperties/1
  # GET /relassignproperties/1.json
  def show
  end

  # GET /relassignproperties/new
  def new
    @relassignproperty = Relassignproperty.new
  end

  # GET /relassignproperties/1/edit
  def edit
  end

  # POST /relassignproperties
  # POST /relassignproperties.json
  def create
    @relassignproperty = Relassignproperty.new(relassignproperty_params)

    respond_to do |format|
      if @relassignproperty.save
        format.html { redirect_to @relassignproperty, notice: 'Relassignproperty was successfully created.' }
        format.json { render :show, status: :created, location: @relassignproperty }
      else
        format.html { render :new }
        format.json { render json: @relassignproperty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relassignproperties/1
  # PATCH/PUT /relassignproperties/1.json
  def update
    respond_to do |format|
      if @relassignproperty.update(relassignproperty_params)
        format.html { redirect_to @relassignproperty, notice: 'Relassignproperty was successfully updated.' }
        format.json { render :show, status: :ok, location: @relassignproperty }
      else
        format.html { render :edit }
        format.json { render json: @relassignproperty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relassignproperties/1
  # DELETE /relassignproperties/1.json
  def destroy
    @relassignproperty.destroy
    respond_to do |format|
      format.html { redirect_to relassignproperties_url, notice: 'Relassignproperty was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relassignproperty
      @relassignproperty = Relassignproperty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relassignproperty_params
      params.fetch(:relassignproperty, {})
    end
end
