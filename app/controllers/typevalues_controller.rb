class TypevaluesController < ApplicationController
  before_action :set_typevalue, only: [:show, :edit, :update, :destroy]

  # GET /typevalues
  # GET /typevalues.json
  def index
    @typevalues = Typevalue.all
  end

  # GET /typevalues/1
  # GET /typevalues/1.json
  def show
  end

  # GET /typevalues/new
  def new
    @typevalue = Typevalue.new
  end

  # GET /typevalues/1/edit
  def edit
  end

  # POST /typevalues
  # POST /typevalues.json
  def create
    @typevalue = Typevalue.new(typevalue_params)

    respond_to do |format|
      if @typevalue.save
        format.html { redirect_to @typevalue, notice: 'Typevalue was successfully created.' }
        format.json { render :show, status: :created, location: @typevalue }
      else
        format.html { render :new }
        format.json { render json: @typevalue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /typevalues/1
  # PATCH/PUT /typevalues/1.json
  def update
    respond_to do |format|
      if @typevalue.update(typevalue_params)
        format.html { redirect_to @typevalue, notice: 'Typevalue was successfully updated.' }
        format.json { render :show, status: :ok, location: @typevalue }
      else
        format.html { render :edit }
        format.json { render json: @typevalue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typevalues/1
  # DELETE /typevalues/1.json
  def destroy
    @typevalue.destroy
    respond_to do |format|
      format.html { redirect_to typevalues_url, notice: 'Typevalue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typevalue
      @typevalue = Typevalue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def typevalue_params
      params.fetch(:typevalue, {})
    end
end
