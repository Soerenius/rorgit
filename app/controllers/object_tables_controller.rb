class ObjectTablesController < ApplicationController
  before_action :set_object_table, only: [:show, :edit, :update, :destroy]

  # GET /object_tables
  # GET /object_tables.json
  def index
    @object_tables = ObjectTable.all
  end

  # GET /object_tables/1
  # GET /object_tables/1.json
  def show
  end

  # GET /object_tables/new
  def new
    @object_table = ObjectTable.new
  end

  # GET /object_tables/1/edit
  def edit
  end

  # POST /object_tables
  # POST /object_tables.json
  def create
    @object_table = ObjectTable.new(object_table_params)

    respond_to do |format|
      if @object_table.save
        format.html { redirect_to @object_table, notice: 'Object table was successfully created.' }
        format.json { render :show, status: :created, location: @object_table }
      else
        format.html { render :new }
        format.json { render json: @object_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /object_tables/1
  # PATCH/PUT /object_tables/1.json
  def update
    respond_to do |format|
      if @object_table.update(object_table_params)
        format.html { redirect_to @object_table, notice: 'Object table was successfully updated.' }
        format.json { render :show, status: :ok, location: @object_table }
      else
        format.html { render :edit }
        format.json { render json: @object_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /object_tables/1
  # DELETE /object_tables/1.json
  def destroy
    @object_table.destroy
    respond_to do |format|
      format.html { redirect_to object_tables_url, notice: 'Object table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_object_table
      @object_table = ObjectTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def object_table_params
      #params.fetch(:object_table, {})
      params.require(:object_table).permit(:guid)
    end
end
