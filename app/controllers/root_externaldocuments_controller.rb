class RootExternaldocumentsController < ApplicationController
  before_action :set_root_externaldocument, only: [:show, :edit, :update, :destroy]

  # GET /root_externaldocuments
  # GET /root_externaldocuments.json
  def index
    @root_externaldocuments = RootTable.search_externaldocuments(params[:search_externaldocuments])
    respond_to do |format|
      format.xlsx {
        response.headers[
          'Content-Disposition'
        ] = "attachment; filename='items.xlsx'"
      }
      format.html { render :index }
    end
  end

  # GET /root_externaldocuments/1
  # GET /root_externaldocuments/1.json
  def show
  end

  # GET /root_externaldocuments/new
  def new
    @root_externaldocument = RootExternaldocument.new
  end

  # GET /root_externaldocuments/1/edit
  def edit
  end

  # POST /root_externaldocuments
  # POST /root_externaldocuments.json
  def create
    @root_externaldocument = RootExternaldocument.new(root_externaldocument_params)

    respond_to do |format|
      if @root_externaldocument.save
        format.html { redirect_to @root_externaldocument, notice: 'Root externaldocument was successfully created.' }
        format.json { render :show, status: :created, location: @root_externaldocument }
      else
        format.html { render :new }
        format.json { render json: @root_externaldocument.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /root_externaldocuments/1
  # PATCH/PUT /root_externaldocuments/1.json
  def update
    respond_to do |format|
      if @root_externaldocument.update(root_externaldocument_params)
        format.html { redirect_to @root_externaldocument, notice: 'Root externaldocument was successfully updated.' }
        format.json { render :show, status: :ok, location: @root_externaldocument }
      else
        format.html { render :edit }
        format.json { render json: @root_externaldocument.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /root_externaldocuments/1
  # DELETE /root_externaldocuments/1.json
  def destroy
    @root_externaldocument.destroy
    respond_to do |format|
      format.html { redirect_to root_externaldocuments_url, notice: 'Root externaldocument was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_root_externaldocument
      @root_externaldocument = RootExternaldocument.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def root_externaldocument_params
      params.fetch(:root_externaldocument, {})
    end
end
