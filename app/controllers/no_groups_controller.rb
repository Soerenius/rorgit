class NoGroupsController < ApplicationController
  before_action :set_no_group, only: [:show, :edit, :update, :destroy]

  # GET /no_groups
  # GET /no_groups.json
  def index
    @no_groups = RootTable.find_by_sql("SELECT DISTINCT r.guid, r.name, r.versiondate, r.versionid, r.description, r.collections, r.documents
    FROM root_tables r, object_tables o
    WHERE r.guid=o.guid AND o.guid NOT IN (SELECT rac.guid_relobject FROM relassigncollections rac)")
  end

  # GET /no_groups/1
  # GET /no_groups/1.json
  def show
  end

  # GET /no_groups/new
  def new
    @no_group = NoGroup.new
  end

  # GET /no_groups/1/edit
  def edit
  end

  # POST /no_groups
  # POST /no_groups.json
  def create
    @no_group = NoGroup.new(no_group_params)

    respond_to do |format|
      if @no_group.save
        format.html { redirect_to @no_group, notice: 'No group was successfully created.' }
        format.json { render :show, status: :created, location: @no_group }
      else
        format.html { render :new }
        format.json { render json: @no_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /no_groups/1
  # PATCH/PUT /no_groups/1.json
  def update
    respond_to do |format|
      if @no_group.update(no_group_params)
        format.html { redirect_to @no_group, notice: 'No group was successfully updated.' }
        format.json { render :show, status: :ok, location: @no_group }
      else
        format.html { render :edit }
        format.json { render json: @no_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /no_groups/1
  # DELETE /no_groups/1.json
  def destroy
    @no_group.destroy
    respond_to do |format|
      format.html { redirect_to no_groups_url, notice: 'No group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_no_group
      @no_group = NoGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def no_group_params
      params.fetch(:no_group, {})
    end
end
