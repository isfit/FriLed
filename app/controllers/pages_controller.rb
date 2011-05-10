class PagesController < ApplicationController

load_and_authorize_resource
layout "application_no_sidebar"

# GET /pages
  # GET /pages.xml
  def index

    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @pages }
    end
  end

  # GET /pages/1
  # GET /pages/1.xml
  def show
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @page }
    end
  end

# GET /pages/new
  # GET /pages/new.xml
  def new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @page }
    end
  end

  # GET /page/1/edit
  def edit
  end

  # POST /pages
  # POST /pages.xml
  def create

    respond_to do |format|
      if @page.save
        format.html { redirect_to(@page, :notice => 'Siden ble opprettet.') }
        format.xml  { render :xml => @page, :status => :created, :location => @page }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pages/1
  # PUT /pages/1.xml
  def update

    respond_to do |format|
      if @page.update_attributes(params[:page])
        format.html { redirect_to(@page, :notice => 'Siden ble oppdatert.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @page.errors, :status => :unprocessable_entity }
      end
    end
  end
# DELETE /pages/1
  # DELETE /pages/1.xml
  def destroy
    @page.destroy

    respond_to do |format|
      format.html { redirect_to(pages_url) }
      format.xml  { head :ok }
    end
  end
end                                                                             
