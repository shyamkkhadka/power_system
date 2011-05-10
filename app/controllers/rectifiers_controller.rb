class RectifiersController < ApplicationController
  # GET /rectifiers
  # GET /rectifiers.xml
	layout "tabbed_container"

  def index
    @station = Station.find(params[:station_id])
		@rectifiers = @station.rectifiers
		
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @rectifiers }
    end
  end

  # GET /rectifiers/1
  # GET /rectifiers/1.xml
  def show
    @rectifier = Rectifier.find(params[:id])
		@station = Station.find(params[:station_id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @rectifier }
    end
  end

  # GET /rectifiers/new
  # GET /rectifiers/new.xml
  def new
    @rectifier = Rectifier.new
		@station = Station.find(params[:station_id])

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @rectifier }
    end
  end

  # GET /rectifiers/1/edit
  def edit
    @rectifier = Rectifier.find(params[:id])
    @station = Station.find(params[:station_id])
  end

  # POST /rectifiers
  # POST /rectifiers.xml
  def create
    @rectifier = Rectifier.new(params[:rectifier])
		@station = Station.find(params[:station_id])	
				
    respond_to do |format|
      if @rectifier.save
        format.html { redirect_to(station_rectifier_path(@station, @rectifier), :notice => 'Rectifier was successfully created.') }
        format.xml  { render :xml => @rectifier, :status => :created, :location => @rectifier }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @rectifier.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /rectifiers/1
  # PUT /rectifiers/1.xml
  def update
    @rectifier = Rectifier.find(params[:id])
    @station = Station.find(params[:station_id])

    respond_to do |format|
      if @rectifier.update_attributes(params[:rectifier])
        format.html { redirect_to(station_rectifier_path(@station, @rectifier), :notice => 'Rectifier was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @rectifier.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rectifiers/1
  # DELETE /rectifiers/1.xml
  def destroy
    @rectifier = Rectifier.find(params[:id])
    @rectifier.destroy

    respond_to do |format|
      format.html { redirect_to(station_rectifiers_url(@station)) }
      format.xml  { head :ok }
    end
  end
end
