class EngineerTypesController < ApplicationController
  # GET /engineer_types
  # GET /engineer_types.xml
  def index
    @engineer_types = EngineerType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @engineer_types }
    end
  end

  # GET /engineer_types/1
  # GET /engineer_types/1.xml
  def show
    @engineer_type = EngineerType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @engineer_type }
    end
  end

  # GET /engineer_types/new
  # GET /engineer_types/new.xml
  def new
    @engineer_type = EngineerType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @engineer_type }
    end
  end

  # GET /engineer_types/1/edit
  def edit
    @engineer_type = EngineerType.find(params[:id])
  end

  # POST /engineer_types
  # POST /engineer_types.xml
  def create
    @engineer_type = EngineerType.new(params[:engineer_type])

    respond_to do |format|
      if @engineer_type.save
        format.html { redirect_to(@engineer_type, :notice => 'Engineer type was successfully created.') }
        format.xml  { render :xml => @engineer_type, :status => :created, :location => @engineer_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @engineer_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /engineer_types/1
  # PUT /engineer_types/1.xml
  def update
    @engineer_type = EngineerType.find(params[:id])

    respond_to do |format|
      if @engineer_type.update_attributes(params[:engineer_type])
        format.html { redirect_to(@engineer_type, :notice => 'Engineer type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @engineer_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /engineer_types/1
  # DELETE /engineer_types/1.xml
  def destroy
    @engineer_type = EngineerType.find(params[:id])
    @engineer_type.destroy

    respond_to do |format|
      format.html { redirect_to(engineer_types_url) }
      format.xml  { head :ok }
    end
  end
end
