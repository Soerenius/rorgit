class RootTablesController < ApplicationController
  before_action :set_root_table, only: [:show, :edit, :update, :destroy]

  # GET /root_tables
  # GET /root_tables.json
  def index
    # @root_tables = RootTable.all
    @root_tables = RootTable.search(params[:search])
    respond_to do |format|
      format.xlsx {
        response.headers[
          'Content-Disposition'
        ] = "attachment; filename='items.xlsx'"
      }
      format.html { render :index }
    end
  end

  # GET /root_tables/1
  # GET /root_tables/1.json
  def show  
    @root_table = RootTable.find(params[:id])  
  end

  # GET /root_tables/new
  def new
    @root_table = RootTable.new
    @object_table = ObjectTable.new
    @collection = Collection.new
    @externaldocument = Externaldocument.new
    @relassigncollection = Relassigncollection.new
    @uuid = SecureRandom.uuid   
  end  

  # GET /root_tables/1/edit
  def edit
  end

  # POST /root_tables
  # POST /root_tables.json
  def create
    @guidvalue = root_table_params[:guid]
    @root_table=RootTable.new(root_table_params)
    respond_to do |format|
      if @root_table.save
        format.html { redirect_to @root_table, notice: 'Root_table was successfully created.'}
        format.json { render :show, status: :created, location: @root_table }
      else
        format.html { render :new }
        format.json { render json: @root_table.errors, status: :unprocessable_entity }
      end
    end    

    #if params[:object]=='1'
    #if params[:art] == 'Fachobjekt'
    if params[:root_table][:art] == 'Fachobjekt'
      ObjectTable.create(:guid=>@guidvalue) 
    elsif params[:root_table][:art]=='Gruppe'
      Collection.create(:guid=>@guidvalue)
    elsif params[:root_table][:art]=='Externes Dokument'
      Externaldocument.create(:guid=>@guidvalue)
    end

    if params[:collection1].values[0] != "" && params[:root_table][:art] == 'Fachobjekt'
      @chosen = params[:collection1].values[0]
      #raise @chosen.inspect
      @uuid = SecureRandom.uuid      
      @guidvalue = root_table_params[:guid]      

      gruppenname=RootTable.find(@chosen).name
      eintrag = RootTable.find_by(guid: @guidvalue)
      eintrag.update(collections: gruppenname)
      RootTable.create(:guid=>@uuid, :name=>'relationship')
      Relationship.create(:guid=>@uuid)
      Relassigncollection.create(:guid=>@uuid,:guid_relobject=>@guidvalue,:guid_relcollection=>@chosen) 
    end 
    if params[:collection2].values[0] != "" && params[:root_table][:art] == 'Fachobjekt'
      @chosen = params[:collection2].values[0]
      @uuid = SecureRandom.uuid      
      @guidvalue = root_table_params[:guid]  
      
      gruppenname2=RootTable.find(@chosen).name
      eintrag2 = RootTable.find_by(guid: @guidvalue)
      bisher = RootTable.find(@guidvalue).collections
      eintrag2.update(collections: (bisher + ', ' + gruppenname2))

      RootTable.create(:guid=>@uuid, :name=>'relationship')
      Relationship.create(:guid=>@uuid)
      Relassigncollection.create(:guid=>@uuid,:guid_relobject=>@guidvalue,:guid_relcollection=>@chosen)  
    end 
    if params[:collection3].values[0] != "" && params[:root_table][:art] == 'Fachobjekt'
      @chosen = params[:collection3].values[0]
      @uuid = SecureRandom.uuid      
      @guidvalue = root_table_params[:guid]   
      
      gruppenname3=RootTable.find(@chosen).name
      eintrag3 = RootTable.find_by(guid: @guidvalue)
      bisher = RootTable.find(@guidvalue).collections
      eintrag3.update(collections: (bisher + ', ' + gruppenname3))

      RootTable.create(:guid=>@uuid, :name=>'relationship')
      Relationship.create(:guid=>@uuid)
      Relassigncollection.create(:guid=>@uuid,:guid_relobject=>@guidvalue,:guid_relcollection=>@chosen)  
    end
    if params[:collection4].values[0] != "" && params[:root_table][:art] == 'Fachobjekt'
      @chosen = params[:collection4].values[0]
      @uuid = SecureRandom.uuid      
      @guidvalue = root_table_params[:guid]  
      
      gruppenname4=RootTable.find(@chosen).name
      eintrag4 = RootTable.find_by(guid: @guidvalue)
      bisher = RootTable.find(@guidvalue).collections
      eintrag4.update(collections: (bisher + ', ' + gruppenname4))

      RootTable.create(:guid=>@uuid, :name=>'relationship')
      Relationship.create(:guid=>@uuid)
      Relassigncollection.create(:guid=>@uuid,:guid_relobject=>@guidvalue,:guid_relcollection=>@chosen)  
    end
    if params[:collection5].values[0] != "" && params[:root_table][:art] == 'Fachobjekt'
      @chosen = params[:collection5].values[0]
      @uuid = SecureRandom.uuid      
      @guidvalue = root_table_params[:guid]   
      
      gruppenname5=RootTable.find(@chosen).name
      eintrag5 = RootTable.find_by(guid: @guidvalue)
      bisher = RootTable.find(@guidvalue).collections
      eintrag5.update(collections: (bisher + ', ' + gruppenname5))

      RootTable.create(:guid=>@uuid, :name=>'relationship')
      Relationship.create(:guid=>@uuid)
      Relassigncollection.create(:guid=>@uuid,:guid_relobject=>@guidvalue,:guid_relcollection=>@chosen)  
    end 
    if params[:document1].values[0] != "" && params[:root_table][:art] == 'Fachobjekt'
      @chosen = params[:document1].values[0]
      #raise @chosen.inspect
      @uuid = SecureRandom.uuid      
      @guidvalue = root_table_params[:guid]      

      docname=RootTable.find(@chosen).name
      eintrag = RootTable.find_by(guid: @guidvalue)
      eintrag.update(documents: docname)
      RootTable.create(:guid=>@uuid, :name=>'relationship')
      Relationship.create(:guid=>@uuid)
      Reldocument.create(:guid=>@uuid,:guid_relroot=>@guidvalue,:guid_reldocument=>@chosen) 
    end 
    if params[:collection1].values[0] != "" && params[:root_table][:art] == 'Gruppe'
      @chosen = params[:collection1].values[0]
      @uuid = SecureRandom.uuid
      @guidvalue = root_table_params[:guid] 
      @type = '2020e1d0-6971-4795-8d62-215f92dcc218'
      
      RootTable.create(:guid=>@uuid, :name=>'relationship')
      Relationship.create(:guid=>@uuid)
      Relcollect.create(:guid=>@uuid,:guid_relroot=>@guidvalue,:guid_relcollection=>@chosen,:guid_typecollection=>@type) 
    end 
    if params[:collection2].values[0] != "" && params[:root_table][:art] == 'Gruppe'
      @chosen = params[:collection2].values[0]
      @uuid = SecureRandom.uuid
      @guidvalue = root_table_params[:guid] 
      @type = '2020e1d0-6971-4795-8d62-215f92dcc218'

      RootTable.create(:guid=>@uuid, :name=>'relationship')
      Relationship.create(:guid=>@uuid)
      Relcollect.create(:guid=>@uuid,:guid_relroot=>@guidvalue,:guid_relcollection=>@chosen,:guid_typecollection=>@type) 
    end
    if params[:collection3].values[0] != "" && params[:root_table][:art] == 'Gruppe'
      @chosen = params[:collection3].values[0]
      @uuid = SecureRandom.uuid
      @guidvalue = root_table_params[:guid] 
      @type = '2020e1d0-6971-4795-8d62-215f92dcc218'

      RootTable.create(:guid=>@uuid, :name=>'relationship')
      Relationship.create(:guid=>@uuid)
      Relcollect.create(:guid=>@uuid,:guid_relroot=>@guidvalue,:guid_relcollection=>@chosen,:guid_typecollection=>@type) 
    end
    if params[:collection4].values[0] != "" && params[:root_table][:art] == 'Gruppe'
      @chosen = params[:collection4].values[0]
      @uuid = SecureRandom.uuid
      @guidvalue = root_table_params[:guid] 
      @type = '2020e1d0-6971-4795-8d62-215f92dcc218'

      RootTable.create(:guid=>@uuid, :name=>'relationship')
      Relationship.create(:guid=>@uuid)
      Relcollect.create(:guid=>@uuid,:guid_relroot=>@guidvalue,:guid_relcollection=>@chosen,:guid_typecollection=>@type) 
    end
    if params[:collection5].values[0] != "" && params[:root_table][:art] == 'Gruppe'
      @chosen = params[:collection5].values[0]
      @uuid = SecureRandom.uuid
      @guidvalue = root_table_params[:guid] 
      @type = '2020e1d0-6971-4795-8d62-215f92dcc218'

      RootTable.create(:guid=>@uuid, :name=>'relationship')
      Relationship.create(:guid=>@uuid)
      Relcollect.create(:guid=>@uuid,:guid_relroot=>@guidvalue,:guid_relcollection=>@chosen,:guid_typecollection=>@type) 
    end 
  end

  # PATCH/PUT /root_tables/1
  # PATCH/PUT /root_tables/1.json
  def update
    respond_to do |format|
      if @root_table.update(root_table_params)
        format.html { redirect_to @root_table, notice: 'Root_table was successfully updated.' }
        format.json { render :show, status: :ok, location: @root_table }
      else
        format.html { render :edit }
        format.json { render json: @root_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /root_tables/1
  # DELETE /root_tables/1.json
  def destroy
    @root_table.destroy
    respond_to do |format|
      format.html { redirect_to root_tables_url, notice: 'Root_table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private    
    # Use callbacks to share common setup or constraints between actions.
    def set_root_table
      @root_table = RootTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def root_table_params
      params.require(:root_table).permit(:guid, :name, :versiondate, :versionid, :description, :collection, :document)
    end

    def set_object_table
      @object_table = ObjectTable.find(params[:id])
    end

    def object_table_params
      params.require(:root_table).permit(:guid)
    end

    def set_collection
      @collection = Collection.find(params[:id])
    end

    def collection_params
      params.require(:root_table).permit(:guid)
    end

    def set_externaldocument
      @externaldocument = Externaldocument.find(params[:id])
    end

    def externaldocument_params
      params.require(:root_table).permit(:guid)
    end

    def set_relationship_root
      @relationship_root = RootTable.find(params[:id])
    end

    def relationship_root_params
      params.require(:root_table).permit(@uuid, :name, :versiondate, :versionid, :description)
    end

    def set_relationship
      @relationship = Relationship.find(params[:id])
    end

   
    def relationship_params
      params.require(:root_table).permit(@uuid)
    end

    def set_relassigncollection
      @relassigncollection = Relassigncollection.find(params[:id])
    end

    def relassigncollection_params
      params.require(:root_table).permit(@uuid, :guid, @chosen)
    end  
    
    def colo_params
      params.require(:colo).permit(:guid)
    end

    
end
