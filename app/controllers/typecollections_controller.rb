class TypecollectionsController < ApplicationController
  before_action :set_typecollection, only: [:show, :edit, :update, :destroy]

  # GET /typecollections
  # GET /typecollections.json
  def index
    @typecollections = Typecollection.all
  end

  # GET /typecollections/1
  # GET /typecollections/1.json
  def show
  end

  # GET /typecollections/new
  def new
    @typecollection = Typecollection.new
  end

  # GET /typecollections/1/edit
  def edit
  end

  # POST /typecollections
  # POST /typecollections.json
  def create
    @typecollection = Typecollection.new(typecollection_params)

    respond_to do |format|
      if @typecollection.save
        format.html { redirect_to @typecollection, notice: 'Typecollection was successfully created.' }
        format.json { render :show, status: :created, location: @typecollection }
      else
        format.html { render :new }
        format.json { render json: @typecollection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /typecollections/1
  # PATCH/PUT /typecollections/1.json
  def update
    respond_to do |format|
      if @typecollection.update(typecollection_params)
        format.html { redirect_to @typecollection, notice: 'Typecollection was successfully updated.' }
        format.json { render :show, status: :ok, location: @typecollection }
      else
        format.html { render :edit }
        format.json { render json: @typecollection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typecollections/1
  # DELETE /typecollections/1.json
  def destroy
    @typecollection.destroy
    respond_to do |format|
      format.html { redirect_to typecollections_url, notice: 'Typecollection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typecollection
      @typecollection = Typecollection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def typecollection_params
      params.fetch(:typecollection, {})
    end
end
