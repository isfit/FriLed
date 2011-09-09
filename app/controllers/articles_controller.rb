class ArticlesController < ApplicationController
  # GET /articles
  # GET /articles.xml
  
  load_and_authorize_resource  
 
  layout :choose_layout
 
  #  before_filter :authenticate_admin!, :except => [:index, :show]

  def index
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @articles }
    end
  end

  # GET /articles/1
  # GET /articles/1.xml
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @article }
    end
  end

  # GET /articles/new
  # GET /articles/new.xml
  def new
    @article.user = current_user
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @article }
    end
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  # POST /articles.xml
  def create
    @article.user = current_user
    @article.published = false
    respond_to do |format|
      if @article.save
        format.html { redirect_to(@article, :notice => 'Teksten ble opprettet. Den vil bli publisert saa snart den blir godkjent av en moderator.') }
        format.xml  { render :xml => @article, :status => :created, :location => @article }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @article.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /articles/1
  # PUT /articles/1.xml
  def update

    respond_to do |format|
      if @article.update_attributes(params[:article])
        format.html { redirect_to(@article, :notice => 'Teksten ble endret.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @article.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.xml
  def destroy
    @article.destroy

    respond_to do |format|
      format.html { redirect_to(articles_url) }
      format.xml  { head :ok }
    end
  end

  private 

  def choose_layout    
    if ['show'].include? action_name
      'application_static_sidebar'
    elsif ['new', 'edit'].include? action_name 
      'application_no_sidebar'
    else
      'application'
    end
  end


end
