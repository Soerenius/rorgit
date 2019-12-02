class RelassignunitsController < ApplicationController
  before_action :set_relassignunit, only: [:show, :edit, :update, :destroy]

  # GET /relassignunits
  # GET /relassignunits.json
  def index
    @relassignunits = Relassignunit.all
  end

  # GET /relassignunits/1
  # GET /relassignunits/1.json
  def show
  end

  # GET /relassignunits/new
  def new
    @relassignunit = Relassignunit.new
  end

  # GET /relassignunits/1/edit
  def edit
  end

  # POST /relassignunits
  # POST /relassignunits.json
  def create
    @relassignunit = Relassignunit.new(relassignunit_params)

    respond_to do |format|
      if @relassignunit.save
        format.html { redirect_to @relassignunit, notice: 'Relassignunit was successfully created.' }
        format.json { render :show, status: :created, location: @relassignunit }
      else
        format.html { render :new }
        format.json { render json: @relassignunit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relassignunits/1
  # PATCH/PUT /relassignunits/1.json
  def update
    respond_to do |format|
      if @relassignunit.update(relassignunit_params)
        format.html { redirect_to @relassignunit, notice: 'Relassignunit was successfully updated.' }
        format.json { render :show, status: :ok, location: @relassignunit }
      else
        format.html { render :edit }
        format.json { render json: @relassignunit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relassignunits/1
  # DELETE /relassignunits/1.json
  def destroy
    @relassignunit.destroy
    respond_to do |format|
      format.html { redirect_to relassignunits_url, notice: 'Relassignunit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relassignunit
      @relassignunit = Relassignunit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relassignunit_params
      params.fetch(:relassignunit, {})
    end
end
