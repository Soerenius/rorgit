class MeasurewithunitsController < ApplicationController
  before_action :set_measurewithunit, only: [:show, :edit, :update, :destroy]

  # GET /measurewithunits
  # GET /measurewithunits.json
  def index
    @measurewithunits = Measurewithunit.all
  end

  # GET /measurewithunits/1
  # GET /measurewithunits/1.json
  def show
  end

  # GET /measurewithunits/new
  def new
    @measurewithunit = Measurewithunit.new
  end

  # GET /measurewithunits/1/edit
  def edit
  end

  # POST /measurewithunits
  # POST /measurewithunits.json
  def create
    @measurewithunit = Measurewithunit.new(measurewithunit_params)

    respond_to do |format|
      if @measurewithunit.save
        format.html { redirect_to @measurewithunit, notice: 'Measurewithunit was successfully created.' }
        format.json { render :show, status: :created, location: @measurewithunit }
      else
        format.html { render :new }
        format.json { render json: @measurewithunit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /measurewithunits/1
  # PATCH/PUT /measurewithunits/1.json
  def update
    respond_to do |format|
      if @measurewithunit.update(measurewithunit_params)
        format.html { redirect_to @measurewithunit, notice: 'Measurewithunit was successfully updated.' }
        format.json { render :show, status: :ok, location: @measurewithunit }
      else
        format.html { render :edit }
        format.json { render json: @measurewithunit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /measurewithunits/1
  # DELETE /measurewithunits/1.json
  def destroy
    @measurewithunit.destroy
    respond_to do |format|
      format.html { redirect_to measurewithunits_url, notice: 'Measurewithunit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_measurewithunit
      @measurewithunit = Measurewithunit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def measurewithunit_params
      params.fetch(:measurewithunit, {})
    end
end
