class ShowsController < ApplicationController
  before_filter :authenticate_user! #:except => [:show, :index]
  
  def new
    @show = Show.new
  end
        
  def create
    @show = Show.create(params[:show])
    respond_to do |format|
      format.html { redirect_to cms_path }
    end
  end

  def show
    respond_to do |format|
      format.html { redirect_to cms_path }
    end
  end

  def index
    @upcoming_shows = Show.upcoming_shows
    @past_shows = Show.past_shows
    respond_to do |format|
      format.html
      format.csv { send_data @upcoming_shows.to_csv }
    end
  end

  def edit
    @show = Show.find(params[:id])
  end

  def update   
    @show = Show.find(params[:id])
    if @show.update_attributes(params[:show])
      respond_to do |format|
       format.html { redirect_to cms_path }
      end
    else
      render :action => 'edit'
    end
  end
  
  def send_object_via_ajax
    @show = Show.find(params[:id])
    render :json => @show
  end
  
  def destroy
    @show = Show.find(params[:id])
    @show.destroy
    respond_to do |format|
      format.html { redirect_to cms_path }
    end
  end
  
end