class WrosController < ApplicationController
  # GET /wros
  # GET /wros.xml
  def index
    @wros = Wro.all
      respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @wros }
    end
  end

  # GET /wros/1
  # GET /wros/1.xml
  def show
    @wro = Wro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @wro }
    end
  end

  # GET /wros/new
  # GET /wros/new.xml
  def new
    @wro = Wro.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @wro }
    end
  end

  # GET /wros/1/edit
  def edit
    @wro = Wro.find(params[:id])
  end

  # POST /wros
  # POST /wros.xml
  def create
    @wro = Wro.new(params[:wro])

    respond_to do |format|
      if @wro.save
        flash[:notice] = 'Wro was successfully created.'
        format.html { redirect_to(@wro) }
        format.xml  { render :xml => @wro, :status => :created, :location => @wro }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @wro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /wros/1
  # PUT /wros/1.xml
  def update
    @wro = Wro.find(params[:id])

    respond_to do |format|
      if @wro.update_attributes(params[:wro])
        flash[:notice] = 'Wro was successfully updated.'
        format.html { redirect_to(@wro) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @wro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /wros/1
  # DELETE /wros/1.xml
  def destroy
    @wro = Wro.find(params[:id])
    @wro.destroy

    respond_to do |format|
      format.html { redirect_to(wros_url) }
      format.xml  { head :ok }
    end
  end
end
