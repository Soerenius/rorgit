class RelassigncollectionsController < ApplicationController
  before_action :set_relassigncollection, only: [:show, :edit, :update, :destroy]

  # GET /relassigncollections
  # GET /relassigncollections.json
  def index
    @relassigncollections = Relassigncollection.all
  end

  # GET /relassigncollections/1
  # GET /relassigncollections/1.json
  def show
  end

  # GET /relassigncollections/new
  def new
    @relassigncollection = Relassigncollection.new
  end

  # GET /relassigncollections/1/edit
  def edit
  end

  # POST /relassigncollections
  # POST /relassigncollections.json
  def create
    @relassigncollection = Relassigncollection.new(relassigncollection_params)

    respond_to do |format|
      if @relassigncollection.save
        format.html { redirect_to @relassigncollection, notice: 'Relassigncollection was successfully created.' }
        format.json { render :show, status: :created, location: @relassigncollection }
      else
        format.html { render :new }
        format.json { render json: @relassigncollection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relassigncollections/1
  # PATCH/PUT /relassigncollections/1.json
  def update
    respond_to do |format|
      if @relassigncollection.update(relassigncollection_params)
        format.html { redirect_to @relassigncollection, notice: 'Relassigncollection was successfully updated.' }
        format.json { render :show, status: :ok, location: @relassigncollection }
      else
        format.html { render :edit }
        format.json { render json: @relassigncollection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relassigncollections/1
  # DELETE /relassigncollections/1.json
  def destroy
    @relassigncollection.destroy
    respond_to do |format|
      format.html { redirect_to relassigncollections_url, notice: 'Relassigncollection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relassigncollection
      @relassigncollection = Relassigncollection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relassigncollection_params
      params.fetch(:relassigncollection, {})
    end
end
