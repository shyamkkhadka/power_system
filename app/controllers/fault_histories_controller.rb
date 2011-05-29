class FaultHistoriesController < ApplicationController
	before_filter :authenticate_user!
	layout "tabbed_container"
  
  # GET /fault_histories
  # GET /fault_histories.xml
  def index
    #@fault_histories = FaultHistory.all
    @ac = Ac.find(params[:ac_id])
    @station = @ac.station
    @fault_histories = @ac.fault_histories.paginate(:page => params[:page], :per_page => 1, :order => "created_at DESC")
    #render :layout => false 

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @fault_histories }
    end
  end

  # GET /fault_histories/1
  # GET /fault_histories/1.xml
  def show
    @fault_history = FaultHistory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @fault_history }
    end
  end

  # GET /fault_histories/new
  # GET /fault_histories/new.xml
  def new
    @fault_history = FaultHistory.new
    @ac = Ac.find(params[:ac_id])
    @station = @ac.station
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @fault_history }
    end
  end

  # GET /fault_histories/1/edit
  def edit
    @fault_history = FaultHistory.find(params[:id])
  end

  # POST /fault_histories
  # POST /fault_histories.xml
  def create
    @fault_history = FaultHistory.new(params[:fault_history])
    @ac = Ac.find(params[:ac_id])
    @station = @ac.station

    respond_to do |format|
      if @fault_history.save
        format.html { redirect_to(ac_fault_histories_path(@ac), :notice => 'Fault history was successfully created.') }
        format.xml  { render :xml => @fault_history, :status => :created, :location => @fault_history }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @fault_history.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /fault_histories/1
  # PUT /fault_histories/1.xml
  def update
    @fault_history = FaultHistory.find(params[:id])

    respond_to do |format|
      if @fault_history.update_attributes(params[:fault_history])
        format.html { redirect_to(@fault_history, :notice => 'Fault history was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @fault_history.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fault_histories/1
  # DELETE /fault_histories/1.xml
  def destroy
    @fault_history = FaultHistory.find(params[:id])
    @ac = Ac.find(params[:ac_id])
    @station = @ac.station
    @fault_history.destroy

    respond_to do |format|
      format.html { redirect_to(station_ac_url(@station, @ac)) }
      format.xml  { head :ok }
    end
  end
end
