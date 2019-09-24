class RelcollectsController < ApplicationController
  before_action :set_relcollect, only: [:show, :edit, :update, :destroy]

  # GET /relcollects
  # GET /relcollects.json
  def index
    @relcollects = Relcollect.all
  end

  # GET /relcollects/1
  # GET /relcollects/1.json
  def show
  end

  # GET /relcollects/new
  def new
    @relcollect = Relcollect.new
  end

  # GET /relcollects/1/edit
  def edit
  end

  # POST /relcollects
  # POST /relcollects.json
  def create
    @relcollect = Relcollect.new(relcollect_params)

    respond_to do |format|
      if @relcollect.save
        format.html { redirect_to @relcollect, notice: 'Relcollect was successfully created.' }
        format.json { render :show, status: :created, location: @relcollect }
      else
        format.html { render :new }
        format.json { render json: @relcollect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relcollects/1
  # PATCH/PUT /relcollects/1.json
  def update
    respond_to do |format|
      if @relcollect.update(relcollect_params)
        format.html { redirect_to @relcollect, notice: 'Relcollect was successfully updated.' }
        format.json { render :show, status: :ok, location: @relcollect }
      else
        format.html { render :edit }
        format.json { render json: @relcollect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relcollects/1
  # DELETE /relcollects/1.json
  def destroy
    @relcollect.destroy
    respond_to do |format|
      format.html { redirect_to relcollects_url, notice: 'Relcollect was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relcollect
      @relcollect = Relcollect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relcollect_params
      params.require(:relcollect).permit(:guid, :guid_relRoot, :guid_relCollection, :guid_typeCollection)
    end
end
