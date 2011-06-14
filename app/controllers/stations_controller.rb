class StationsController < ApplicationController
  before_filter :authenticate_user!
  
	autocomplete :station, :name
  # GET /stations
  # GET /stations.xml
  def index
  	@stations = Station.paginate(:page => params[:page], :per_page => 5, :order => "created_at DESC")
    @station = Station.new
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @stations }
    end
  end

  # GET /stations/1
  # GET /stations/1.xml
  def show
    @station = Station.find(params[:id])

    respond_to do |format|
      format.html { redirect_to (station_batteries_url(@station)) }
      format.xml  { render :xml => @station }
    end
  end

  # GET /stations/new
  # GET /stations/new.xml
  def new
    @station = Station.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @station }
    end
  end

  # GET /stations/1/edit
  def edit
    @station = Station.find(params[:id])
  end

  # POST /stations
  # POST /stations.xml
  def create
    @station = Station.new(params[:station])

    respond_to do |format|
      if @station.save
        format.html { redirect_to(station_batteries_url(@station), :notice => 'Station was successfully created.') }
        format.xml  { render :xml => @station, :status => :created, :location => @station }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @station.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /stations/1
  # PUT /stations/1.xml
  def update
    @station = Station.find(params[:id])

    respond_to do |format|
      if @station.update_attributes(params[:station])
        format.html { redirect_to(stations_url, :notice => 'Station was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @station.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /stations/1
  # DELETE /stations/1.xml
  def destroy
    @station = Station.find(params[:id])
    @station.destroy

    respond_to do |format|
      format.html { redirect_to(stations_url) }
      format.xml  { head :ok }
    end
  end
  
  # Shows search result from station
  def search_result
  	station = Station.find_by_name(params[:name])
  	 respond_to do |format|
        format.html { redirect_to(station_batteries_url(station)) }
        format.xml  { render :xml => station, :status => :created, :location => station }
     end
  end
  
  # GET /stations/search
  # Displays search suggestions for stations 
  def search

   #search_term = "%".concat(params[:term].concat("%"))

  	#stations = Station.find(:all, :conditions => ["name like ?",search_term])
  	#station_names = stations.collect{ |s| s.name }
  	#station_names = Station.all.collect{ |s| s.name }
  	#puts "name #{station_names.inspect}"
  	#respond_to do |format|
  		#format.json { render :json => stations.to_json }
  	#end
  end
end
