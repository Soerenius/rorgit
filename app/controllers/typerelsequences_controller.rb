class TyperelsequencesController < ApplicationController
  before_action :set_typerelsequence, only: [:show, :edit, :update, :destroy]

  # GET /typerelsequences
  # GET /typerelsequences.json
  def index
    @typerelsequences = Typerelsequence.all
  end

  # GET /typerelsequences/1
  # GET /typerelsequences/1.json
  def show
  end

  # GET /typerelsequences/new
  def new
    @typerelsequence = Typerelsequence.new
  end

  # GET /typerelsequences/1/edit
  def edit
  end

  # POST /typerelsequences
  # POST /typerelsequences.json
  def create
    @typerelsequence = Typerelsequence.new(typerelsequence_params)

    respond_to do |format|
      if @typerelsequence.save
        format.html { redirect_to @typerelsequence, notice: 'Typerelsequence was successfully created.' }
        format.json { render :show, status: :created, location: @typerelsequence }
      else
        format.html { render :new }
        format.json { render json: @typerelsequence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /typerelsequences/1
  # PATCH/PUT /typerelsequences/1.json
  def update
    respond_to do |format|
      if @typerelsequence.update(typerelsequence_params)
        format.html { redirect_to @typerelsequence, notice: 'Typerelsequence was successfully updated.' }
        format.json { render :show, status: :ok, location: @typerelsequence }
      else
        format.html { render :edit }
        format.json { render json: @typerelsequence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typerelsequences/1
  # DELETE /typerelsequences/1.json
  def destroy
    @typerelsequence.destroy
    respond_to do |format|
      format.html { redirect_to typerelsequences_url, notice: 'Typerelsequence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typerelsequence
      @typerelsequence = Typerelsequence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def typerelsequence_params
      params.fetch(:typerelsequence, {})
    end
end
