class BatteriesController < ApplicationController
  # GET /batteries
  # GET /batteries.xml
	layout "tabbed_container"

  def index
    @batteries = Battery.all
 		@station = Station.find(params[:station_id])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @batteries }
    end
  end

  # GET /batteries/1
  # GET /batteries/1.xml
  def show
    @battery = Battery.find(params[:id])
    @station = Station.find(params[:station_id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @battery }
    end
  end

  # GET /batteries/new
  # GET /batteries/new.xml
  def new
    @battery = Battery.new
		@station = Station.find(params[:station_id])

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @battery }
    end
  end

  # GET /batteries/1/edit
  def edit
    @battery = Battery.find(params[:id])
		@station = Station.find(params[:station_id])	
		
  end

  # POST /batteries
  # POST /batteries.xml
  def create
    @battery = Battery.new(params[:battery])
		@station = Station.find(params[:station_id])		
		
    respond_to do |format|
      if @battery.save
				format.html { redirect_to(station_battery_path(@station, @battery), :notice => 'Battery was successfully created.') }
        format.xml  { render :xml => @battery, :status => :created, :location => @battery }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @battery.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /batteries/1
  # PUT /batteries/1.xml
  def update
    @battery = Battery.find(params[:id])
    @station = Station.find(params[:station_id])	
	
    respond_to do |format|
      if @battery.update_attributes(params[:battery])
        format.html { redirect_to(station_battery_path(@station,@battery), :notice => 'Battery was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @battery.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /batteries/1
  # DELETE /batteries/1.xml
  def destroy
    @battery = Battery.find(params[:id])
    @station = Station.find(params[:station_id])	
    @battery.destroy

    respond_to do |format|
      format.html { redirect_to(station_batteries_url(@station), :notice => 'Battery was successfully deleted') }
      format.xml  { head :ok }
    end
  end
end
