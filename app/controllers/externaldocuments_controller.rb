class ExternaldocumentsController < ApplicationController
  before_action :set_externaldocument, only: [:show, :edit, :update, :destroy]

  # GET /externaldocuments
  # GET /externaldocuments.json
  def index
    @externaldocuments = Externaldocument.all
  end

  # GET /externaldocuments/1
  # GET /externaldocuments/1.json
  def show
  end

  # GET /externaldocuments/new
  def new
    @externaldocument = Externaldocument.new
  end

  # GET /externaldocuments/1/edit
  def edit
  end

  # POST /externaldocuments
  # POST /externaldocuments.json
  def create
    @externaldocument = Externaldocument.new(externaldocument_params)

    respond_to do |format|
      if @externaldocument.save
        format.html { redirect_to @externaldocument, notice: 'Externaldocument was successfully created.' }
        format.json { render :show, status: :created, location: @externaldocument }
      else
        format.html { render :new }
        format.json { render json: @externaldocument.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /externaldocuments/1
  # PATCH/PUT /externaldocuments/1.json
  def update
    respond_to do |format|
      if @externaldocument.update(externaldocument_params)
        format.html { redirect_to @externaldocument, notice: 'Externaldocument was successfully updated.' }
        format.json { render :show, status: :ok, location: @externaldocument }
      else
        format.html { render :edit }
        format.json { render json: @externaldocument.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /externaldocuments/1
  # DELETE /externaldocuments/1.json
  def destroy
    @externaldocument.destroy
    respond_to do |format|
      format.html { redirect_to externaldocuments_url, notice: 'Externaldocument was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_externaldocument
      @externaldocument = Externaldocument.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def externaldocument_params
      params.fetch(:externaldocument, {})
    end
end
