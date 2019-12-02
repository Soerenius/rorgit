class RelcollectTsController < ApplicationController
  before_action :set_relcollect_t, only: [:show, :edit, :update, :destroy]

  # GET /relcollect_ts
  # GET /relcollect_ts.json
  def index
    @relcollect_ts = RelcollectT.all
  end

  # GET /relcollect_ts/1
  # GET /relcollect_ts/1.json
  def show
  end

  # GET /relcollect_ts/new
  def new
    @relcollect_t = RelcollectT.new
  end

  # GET /relcollect_ts/1/edit
  def edit
  end

  # POST /relcollect_ts
  # POST /relcollect_ts.json
  def create
    @relcollect_t = RelcollectT.new(relcollect_t_params)

    respond_to do |format|
      if @relcollect_t.save
        format.html { redirect_to @relcollect_t, notice: 'Relcollect t was successfully created.' }
        format.json { render :show, status: :created, location: @relcollect_t }
      else
        format.html { render :new }
        format.json { render json: @relcollect_t.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relcollect_ts/1
  # PATCH/PUT /relcollect_ts/1.json
  def update
    respond_to do |format|
      if @relcollect_t.update(relcollect_t_params)
        format.html { redirect_to @relcollect_t, notice: 'Relcollect t was successfully updated.' }
        format.json { render :show, status: :ok, location: @relcollect_t }
      else
        format.html { render :edit }
        format.json { render json: @relcollect_t.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relcollect_ts/1
  # DELETE /relcollect_ts/1.json
  def destroy
    @relcollect_t.destroy
    respond_to do |format|
      format.html { redirect_to relcollect_ts_url, notice: 'Relcollect t was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relcollect_t
      @relcollect_t = RelcollectT.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relcollect_t_params
      params.require(:relcollect_t).permit(:guid, :guid_relRoot, :guid_relCollection, :guid_typeCollection)
    end
end
