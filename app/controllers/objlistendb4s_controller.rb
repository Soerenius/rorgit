class Objlistendb4sController < ApplicationController
  before_action :set_objlistendb4, only: [:show, :edit, :update, :destroy]

  # GET /objlistendb4s
  # GET /objlistendb4s.json
  def index
    @objlistendb4s = Objlistendb4.all
  end

  # GET /objlistendb4s/1
  # GET /objlistendb4s/1.json
  def show
  end

  # GET /objlistendb4s/new
  def new
    @objlistendb4 = Objlistendb4.new
  end

  # GET /objlistendb4s/1/edit
  def edit
  end

  # POST /objlistendb4s
  # POST /objlistendb4s.json
  def create
    @objlistendb4 = Objlistendb4.new(objlistendb4_params)

    respond_to do |format|
      if @objlistendb4.save
        format.html { redirect_to @objlistendb4, notice: 'Objlistendb4 was successfully created.' }
        format.json { render :show, status: :created, location: @objlistendb4 }
      else
        format.html { render :new }
        format.json { render json: @objlistendb4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /objlistendb4s/1
  # PATCH/PUT /objlistendb4s/1.json
  def update
    respond_to do |format|
      if @objlistendb4.update(objlistendb4_params)
        format.html { redirect_to @objlistendb4, notice: 'Objlistendb4 was successfully updated.' }
        format.json { render :show, status: :ok, location: @objlistendb4 }
      else
        format.html { render :edit }
        format.json { render json: @objlistendb4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /objlistendb4s/1
  # DELETE /objlistendb4s/1.json
  def destroy
    @objlistendb4.destroy
    respond_to do |format|
      format.html { redirect_to objlistendb4s_url, notice: 'Objlistendb4 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_objlistendb4
      @objlistendb4 = Objlistendb4.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def objlistendb4_params
      params.fetch(:objlistendb4, {})
    end
end
