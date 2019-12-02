class RelsequencesController < ApplicationController
  before_action :set_relsequence, only: [:show, :edit, :update, :destroy]

  # GET /relsequences
  # GET /relsequences.json
  def index
    @relsequences = Relsequence.all
  end

  # GET /relsequences/1
  # GET /relsequences/1.json
  def show
  end

  # GET /relsequences/new
  def new
    @relsequence = Relsequence.new
  end

  # GET /relsequences/1/edit
  def edit
  end

  # POST /relsequences
  # POST /relsequences.json
  def create
    @relsequence = Relsequence.new(relsequence_params)

    respond_to do |format|
      if @relsequence.save
        format.html { redirect_to @relsequence, notice: 'Relsequence was successfully created.' }
        format.json { render :show, status: :created, location: @relsequence }
      else
        format.html { render :new }
        format.json { render json: @relsequence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relsequences/1
  # PATCH/PUT /relsequences/1.json
  def update
    respond_to do |format|
      if @relsequence.update(relsequence_params)
        format.html { redirect_to @relsequence, notice: 'Relsequence was successfully updated.' }
        format.json { render :show, status: :ok, location: @relsequence }
      else
        format.html { render :edit }
        format.json { render json: @relsequence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relsequences/1
  # DELETE /relsequences/1.json
  def destroy
    @relsequence.destroy
    respond_to do |format|
      format.html { redirect_to relsequences_url, notice: 'Relsequence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relsequence
      @relsequence = Relsequence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relsequence_params
      params.fetch(:relsequence, {})
    end
end
