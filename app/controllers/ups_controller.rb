class UpsController < ApplicationController
  # GET /ups
  # GET /ups.xml
  def index
    @ups = Up.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ups }
    end
  end

  # GET /ups/1
  # GET /ups/1.xml
  def show
    @up = Up.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @up }
    end
  end

  # GET /ups/new
  # GET /ups/new.xml
  def new
    @up = Up.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @up }
    end
  end

  # GET /ups/1/edit
  def edit
    @up = Up.find(params[:id])
  end

  # POST /ups
  # POST /ups.xml
  def create
    @up = Up.new(params[:up])

    respond_to do |format|
      if @up.save
        format.html { redirect_to(@up, :notice => 'Up was successfully created.') }
        format.xml  { render :xml => @up, :status => :created, :location => @up }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @up.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ups/1
  # PUT /ups/1.xml
  def update
    @up = Up.find(params[:id])

    respond_to do |format|
      if @up.update_attributes(params[:up])
        format.html { redirect_to(@up, :notice => 'Up was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @up.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ups/1
  # DELETE /ups/1.xml
  def destroy
    @up = Up.find(params[:id])
    @up.destroy

    respond_to do |format|
      format.html { redirect_to(ups_url) }
      format.xml  { head :ok }
    end
  end
end