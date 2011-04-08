class ServicingHistoriesController < ApplicationController
	layout "tabbed_container"
  # GET /servicing_histories
  # GET /servicing_histories.xml
  def index
    #@servicing_histories = ServicingHistory.all
    @generator = Generator.find(params[:generator_id])
    @station = @generator.station
    @servicing_histories = @generator.servicing_histories.paginate(:page => params[:page], :per_page => 1, :order => "created_at DESC")
    render :layout => false 
   #respond_to do |format|
      #format.html # index.html.erb
      #format.xml  { render :xml => @servicing_histories }
    #end
  end

  # GET /servicing_histories/1
  # GET /servicing_histories/1.xml
  def show
    @servicing_history = ServicingHistory.find(params[:id])
    
	
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @servicing_history }
    end
  end

  # GET /servicing_histories/new
  # GET /servicing_histories/new.xml
  def new
    @servicing_history = ServicingHistory.new
    @generator = Generator.find(params[:generator_id])
    
    @station = @generator.station

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @servicing_history }
    end
  end

  # GET /servicing_histories/1/edit
  def edit
    @servicing_history = ServicingHistory.find(params[:id])
    @generator = Generator.find(params[:generator_id])
    @station = @generator.station
  end

  # POST /servicing_histories
  # POST /servicing_histories.xml
  def create
    @servicing_history = ServicingHistory.new(params[:servicing_history])
    @generator = Generator.find(params[:generator_id])
    @station = @generator.station

    respond_to do |format|
      if @servicing_history.save
        format.html { redirect_to(station_generator_path(@station, @generator), :notice => 'Servicing history was successfully created.') }
        format.xml  { render :xml => @servicing_history, :status => :created, :location => @servicing_history }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @servicing_history.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /servicing_histories/1
  # PUT /servicing_histories/1.xml
  def update
    @servicing_history = ServicingHistory.find(params[:id])
    @generator = Generator.find(params[:generator_id])
    @station = @generator.station

    respond_to do |format|
      if @servicing_history.update_attributes(params[:servicing_history])
        format.html { redirect_to(station_generator_path(@station, @generator), :notice => 'Servicing history was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @servicing_history.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /servicing_histories/1
  # DELETE /servicing_histories/1.xml
  def destroy
    @servicing_history = ServicingHistory.find(params[:id])
    @generator = Generator.find(params[:generator_id])
    @station = @generator.station
    @servicing_history.destroy

    respond_to do |format|
      format.html { redirect_to(station_generator_url(@station, @generator)) }
      format.xml  { head :ok }
    end
  end
end
