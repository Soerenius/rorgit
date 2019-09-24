class ReldocumentsController < ApplicationController
  before_action :set_reldocument, only: [:show, :edit, :update, :destroy]

  # GET /reldocuments
  # GET /reldocuments.json
  def index
    @reldocuments = Reldocument.all
  end

  # GET /reldocuments/1
  # GET /reldocuments/1.json
  def show
  end

  # GET /reldocuments/new
  def new
    @reldocument = Reldocument.new
  end

  # GET /reldocuments/1/edit
  def edit
  end

  # POST /reldocuments
  # POST /reldocuments.json
  def create
    @reldocument = Reldocument.new(reldocument_params)

    respond_to do |format|
      if @reldocument.save
        format.html { redirect_to @reldocument, notice: 'Reldocument was successfully created.' }
        format.json { render :show, status: :created, location: @reldocument }
      else
        format.html { render :new }
        format.json { render json: @reldocument.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reldocuments/1
  # PATCH/PUT /reldocuments/1.json
  def update
    respond_to do |format|
      if @reldocument.update(reldocument_params)
        format.html { redirect_to @reldocument, notice: 'Reldocument was successfully updated.' }
        format.json { render :show, status: :ok, location: @reldocument }
      else
        format.html { render :edit }
        format.json { render json: @reldocument.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reldocuments/1
  # DELETE /reldocuments/1.json
  def destroy
    @reldocument.destroy
    respond_to do |format|
      format.html { redirect_to reldocuments_url, notice: 'Reldocument was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reldocument
      @reldocument = Reldocument.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reldocument_params
      params.fetch(:reldocument, {})
    end
end
