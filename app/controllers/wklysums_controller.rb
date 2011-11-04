class WklysumsController < ApplicationController
  # GET /wklysums
  # GET /wklysums.xml
  def index
    @wklysums = Wklysum.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @wklysums }
    end
  end

  # GET /wklysums/1
  # GET /wklysums/1.xml
  def show
    @wklysum = Wklysum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @wklysum }
    end
  end

  # GET /wklysums/new
  # GET /wklysums/new.xml
  def new
    @wklysum = Wklysum.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @wklysum }
    end
  end

  # GET /wklysums/1/edit
  def edit
    @wklysum = Wklysum.find(params[:id])
  end

  # POST /wklysums
  # POST /wklysums.xml
  def create
    @wklysum = Wklysum.new(params[:wklysum])

    respond_to do |format|
      if @wklysum.save
        flash[:notice] = 'Wklysum was successfully created.'
        format.html { redirect_to(@wklysum) }
        format.xml  { render :xml => @wklysum, :status => :created, :location => @wklysum }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @wklysum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /wklysums/1
  # PUT /wklysums/1.xml
  def update
    @wklysum = Wklysum.find(params[:id])

    respond_to do |format|
      if @wklysum.update_attributes(params[:wklysum])
        flash[:notice] = 'Wklysum was successfully updated.'
        format.html { redirect_to(@wklysum) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @wklysum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /wklysums/1
  # DELETE /wklysums/1.xml
  def destroy
    @wklysum = Wklysum.find(params[:id])
    @wklysum.destroy

    respond_to do |format|
      format.html { redirect_to(wklysums_url) }
      format.xml  { head :ok }
    end
  end
end
