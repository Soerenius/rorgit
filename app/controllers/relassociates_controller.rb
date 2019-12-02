class RelassociatesController < ApplicationController
  before_action :set_relassociate, only: [:show, :edit, :update, :destroy]

  # GET /relassociates
  # GET /relassociates.json
  def index
    @relassociates = Relassociate.all
  end

  # GET /relassociates/1
  # GET /relassociates/1.json
  def show
  end

  # GET /relassociates/new
  def new
    @relassociate = Relassociate.new
  end

  # GET /relassociates/1/edit
  def edit
  end

  # POST /relassociates
  # POST /relassociates.json
  def create
    @relassociate = Relassociate.new(relassociate_params)

    respond_to do |format|
      if @relassociate.save
        format.html { redirect_to @relassociate, notice: 'Relassociate was successfully created.' }
        format.json { render :show, status: :created, location: @relassociate }
      else
        format.html { render :new }
        format.json { render json: @relassociate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relassociates/1
  # PATCH/PUT /relassociates/1.json
  def update
    respond_to do |format|
      if @relassociate.update(relassociate_params)
        format.html { redirect_to @relassociate, notice: 'Relassociate was successfully updated.' }
        format.json { render :show, status: :ok, location: @relassociate }
      else
        format.html { render :edit }
        format.json { render json: @relassociate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relassociates/1
  # DELETE /relassociates/1.json
  def destroy
    @relassociate.destroy
    respond_to do |format|
      format.html { redirect_to relassociates_url, notice: 'Relassociate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relassociate
      @relassociate = Relassociate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relassociate_params
      params.fetch(:relassociate, {})
    end
end
