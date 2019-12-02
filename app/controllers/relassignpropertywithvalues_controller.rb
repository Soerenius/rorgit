class RelassignpropertywithvaluesController < ApplicationController
  before_action :set_relassignpropertywithvalue, only: [:show, :edit, :update, :destroy]

  # GET /relassignpropertywithvalues
  # GET /relassignpropertywithvalues.json
  def index
    @relassignpropertywithvalues = Relassignpropertywithvalue.all
  end

  # GET /relassignpropertywithvalues/1
  # GET /relassignpropertywithvalues/1.json
  def show
  end

  # GET /relassignpropertywithvalues/new
  def new
    @relassignpropertywithvalue = Relassignpropertywithvalue.new
  end

  # GET /relassignpropertywithvalues/1/edit
  def edit
  end

  # POST /relassignpropertywithvalues
  # POST /relassignpropertywithvalues.json
  def create
    @relassignpropertywithvalue = Relassignpropertywithvalue.new(relassignpropertywithvalue_params)

    respond_to do |format|
      if @relassignpropertywithvalue.save
        format.html { redirect_to @relassignpropertywithvalue, notice: 'Relassignpropertywithvalue was successfully created.' }
        format.json { render :show, status: :created, location: @relassignpropertywithvalue }
      else
        format.html { render :new }
        format.json { render json: @relassignpropertywithvalue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relassignpropertywithvalues/1
  # PATCH/PUT /relassignpropertywithvalues/1.json
  def update
    respond_to do |format|
      if @relassignpropertywithvalue.update(relassignpropertywithvalue_params)
        format.html { redirect_to @relassignpropertywithvalue, notice: 'Relassignpropertywithvalue was successfully updated.' }
        format.json { render :show, status: :ok, location: @relassignpropertywithvalue }
      else
        format.html { render :edit }
        format.json { render json: @relassignpropertywithvalue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relassignpropertywithvalues/1
  # DELETE /relassignpropertywithvalues/1.json
  def destroy
    @relassignpropertywithvalue.destroy
    respond_to do |format|
      format.html { redirect_to relassignpropertywithvalues_url, notice: 'Relassignpropertywithvalue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relassignpropertywithvalue
      @relassignpropertywithvalue = Relassignpropertywithvalue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relassignpropertywithvalue_params
      params.fetch(:relassignpropertywithvalue, {})
    end
end
