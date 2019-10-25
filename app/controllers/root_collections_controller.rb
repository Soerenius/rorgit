class RootCollectionsController < ApplicationController
  before_action :set_root_collection, only: [:show, :edit, :update, :destroy]

  # GET /root_collections
  # GET /root_collections.json
  def index
    @root_collections = RootTable.search_collections(params[:search_collections])
  end

  # GET /root_collections/1
  # GET /root_collections/1.json
  def show
  end

  # GET /root_collections/new
  def new
    @root_collection = RootCollection.new
  end

  # GET /root_collections/1/edit
  def edit
  end

  # POST /root_collections
  # POST /root_collections.json
  def create
    @root_collection = RootCollection.new(root_collection_params)

    respond_to do |format|
      if @root_collection.save
        format.html { redirect_to @root_collection, notice: 'Root collection was successfully created.' }
        format.json { render :show, status: :created, location: @root_collection }
      else
        format.html { render :new }
        format.json { render json: @root_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /root_collections/1
  # PATCH/PUT /root_collections/1.json
  def update
    respond_to do |format|
      if @root_collection.update(root_collection_params)
        format.html { redirect_to @root_collection, notice: 'Root collection was successfully updated.' }
        format.json { render :show, status: :ok, location: @root_collection }
      else
        format.html { render :edit }
        format.json { render json: @root_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /root_collections/1
  # DELETE /root_collections/1.json
  def destroy
    @root_collection.destroy
    respond_to do |format|
      format.html { redirect_to root_collections_url, notice: 'Root collection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_root_collection
      @root_collection = RootCollection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def root_collection_params
      params.fetch(:root_collection, {})
    end
end
