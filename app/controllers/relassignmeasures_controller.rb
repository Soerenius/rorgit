class RelassignmeasuresController < ApplicationController
  before_action :set_relassignmeasure, only: [:show, :edit, :update, :destroy]

  # GET /relassignmeasures
  # GET /relassignmeasures.json
  def index
    @relassignmeasures = Relassignmeasure.all
  end

  # GET /relassignmeasures/1
  # GET /relassignmeasures/1.json
  def show
  end

  # GET /relassignmeasures/new
  def new
    @relassignmeasure = Relassignmeasure.new
  end

  # GET /relassignmeasures/1/edit
  def edit
  end

  # POST /relassignmeasures
  # POST /relassignmeasures.json
  def create
    @relassignmeasure = Relassignmeasure.new(relassignmeasure_params)

    respond_to do |format|
      if @relassignmeasure.save
        format.html { redirect_to @relassignmeasure, notice: 'Relassignmeasure was successfully created.' }
        format.json { render :show, status: :created, location: @relassignmeasure }
      else
        format.html { render :new }
        format.json { render json: @relassignmeasure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relassignmeasures/1
  # PATCH/PUT /relassignmeasures/1.json
  def update
    respond_to do |format|
      if @relassignmeasure.update(relassignmeasure_params)
        format.html { redirect_to @relassignmeasure, notice: 'Relassignmeasure was successfully updated.' }
        format.json { render :show, status: :ok, location: @relassignmeasure }
      else
        format.html { render :edit }
        format.json { render json: @relassignmeasure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relassignmeasures/1
  # DELETE /relassignmeasures/1.json
  def destroy
    @relassignmeasure.destroy
    respond_to do |format|
      format.html { redirect_to relassignmeasures_url, notice: 'Relassignmeasure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relassignmeasure
      @relassignmeasure = Relassignmeasure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relassignmeasure_params
      params.fetch(:relassignmeasure, {})
    end
end
