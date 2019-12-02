class RelassignvaluesController < ApplicationController
  before_action :set_relassignvalue, only: [:show, :edit, :update, :destroy]

  # GET /relassignvalues
  # GET /relassignvalues.json
  def index
    @relassignvalues = Relassignvalue.all
  end

  # GET /relassignvalues/1
  # GET /relassignvalues/1.json
  def show
  end

  # GET /relassignvalues/new
  def new
    @relassignvalue = Relassignvalue.new
  end

  # GET /relassignvalues/1/edit
  def edit
  end

  # POST /relassignvalues
  # POST /relassignvalues.json
  def create
    @relassignvalue = Relassignvalue.new(relassignvalue_params)

    respond_to do |format|
      if @relassignvalue.save
        format.html { redirect_to @relassignvalue, notice: 'Relassignvalue was successfully created.' }
        format.json { render :show, status: :created, location: @relassignvalue }
      else
        format.html { render :new }
        format.json { render json: @relassignvalue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relassignvalues/1
  # PATCH/PUT /relassignvalues/1.json
  def update
    respond_to do |format|
      if @relassignvalue.update(relassignvalue_params)
        format.html { redirect_to @relassignvalue, notice: 'Relassignvalue was successfully updated.' }
        format.json { render :show, status: :ok, location: @relassignvalue }
      else
        format.html { render :edit }
        format.json { render json: @relassignvalue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relassignvalues/1
  # DELETE /relassignvalues/1.json
  def destroy
    @relassignvalue.destroy
    respond_to do |format|
      format.html { redirect_to relassignvalues_url, notice: 'Relassignvalue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relassignvalue
      @relassignvalue = Relassignvalue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relassignvalue_params
      params.fetch(:relassignvalue, {})
    end
end
