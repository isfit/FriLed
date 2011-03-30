class ContributorsController < ApplicationController
  # GET /contributors
  # GET /contributors.xml
   
  load_and_authorize_resource
  
  #  before_filter :authenticate_admin!, :except => [:index, :show]

  def index

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @contributors }
    end
  end

  # GET /contributors/1
  # GET /contributors/1.xml
  def show

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @contributor }
    end
  end

  # GET /contributors/new
  # GET /contributors/new.xml
  def new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @contributor }
    end
  end

  # GET /contributors/1/edit
  def edit
  end

  # POST /contributors
  # POST /contributors.xml
  def create
   # @contributor = Contributor.new(params[:contributor])

    respond_to do |format|
      if @contributor.save
        format.html { redirect_to(new_article_path, :notice => 'Contributor was successfully created.') }
        format.xml  { render :xml => @contributor, :status => :created, :location => @contributor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @contributor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /contributors/1
  # PUT /contributors/1.xml
  def update

    respond_to do |format|
      if @contributor.update_attributes(params[:contributor])
        format.html { redirect_to(@contributor, :notice => 'Contributor was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @contributor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /contributors/1
  # DELETE /contributors/1.xml
  def destroy
    @contributor.destroy

    respond_to do |format|
      format.html { redirect_to(contributors_url) }
      format.xml  { head :ok }
    end
  end
end
