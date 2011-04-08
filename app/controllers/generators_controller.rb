class GeneratorsController < ApplicationController
  # GET /generators
  # GET /generators.xml
  layout "tabbed_container"
  
  def index
    @generators = Generator.all
    @station = Station.find(params[:station_id])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @generators }
    end
  end

  # GET /generators/1
  # GET /generators/1.xml
  def show
    @generator = Generator.find(params[:id])
    @station = Station.find(params[:station_id])
   	

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @generator }
    end
  end

  # GET /generators/new
  # GET /generators/new.xml
  def new
    @generator = Generator.new
		@station = Station.find(params[:station_id])
		
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @generator }
    end
  end

  # GET /generators/1/edit
  def edit
    @generator = Generator.find(params[:id])
    @station = Station.find(params[:station_id])
  end

  # POST /generators
  # POST /generators.xml
  def create
    @generator = Generator.new(params[:generator])
    @station = Station.find(params[:station_id])

    respond_to do |format|
      if @generator.save
        format.html { redirect_to(station_generator_path(@station, @generator), :notice => 'Generator was successfully created.') }
        format.xml  { render :xml => @generator, :status => :created, :location => @generator }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @generator.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /generators/1
  # PUT /generators/1.xml
  def update
    @generator = Generator.find(params[:id])
    @station = Station.find(params[:station_id])

    respond_to do |format|
      if @generator.update_attributes(params[:generator])
        format.html { redirect_to(station_generator_path(@station, @generator), :notice => 'Generator was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @generator.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /generators/1
  # DELETE /generators/1.xml
  def destroy
    @generator = Generator.find(params[:id])
    @station = Station.find(params[:station_id])	
    @generator.destroy

    respond_to do |format|
      format.html { redirect_to(station_generators_url(@station)) }
      format.xml  { head :ok }
    end
  end
end
