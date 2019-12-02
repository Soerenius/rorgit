class TyperelassociatesController < ApplicationController
  before_action :set_typerelassociate, only: [:show, :edit, :update, :destroy]

  # GET /typerelassociates
  # GET /typerelassociates.json
  def index
    @typerelassociates = Typerelassociate.all
  end

  # GET /typerelassociates/1
  # GET /typerelassociates/1.json
  def show
  end

  # GET /typerelassociates/new
  def new
    @typerelassociate = Typerelassociate.new
  end

  # GET /typerelassociates/1/edit
  def edit
  end

  # POST /typerelassociates
  # POST /typerelassociates.json
  def create
    @typerelassociate = Typerelassociate.new(typerelassociate_params)

    respond_to do |format|
      if @typerelassociate.save
        format.html { redirect_to @typerelassociate, notice: 'Typerelassociate was successfully created.' }
        format.json { render :show, status: :created, location: @typerelassociate }
      else
        format.html { render :new }
        format.json { render json: @typerelassociate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /typerelassociates/1
  # PATCH/PUT /typerelassociates/1.json
  def update
    respond_to do |format|
      if @typerelassociate.update(typerelassociate_params)
        format.html { redirect_to @typerelassociate, notice: 'Typerelassociate was successfully updated.' }
        format.json { render :show, status: :ok, location: @typerelassociate }
      else
        format.html { render :edit }
        format.json { render json: @typerelassociate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typerelassociates/1
  # DELETE /typerelassociates/1.json
  def destroy
    @typerelassociate.destroy
    respond_to do |format|
      format.html { redirect_to typerelassociates_url, notice: 'Typerelassociate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typerelassociate
      @typerelassociate = Typerelassociate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def typerelassociate_params
      params.fetch(:typerelassociate, {})
    end
end
