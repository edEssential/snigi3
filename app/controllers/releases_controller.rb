class ReleasesController < ApplicationController
  before_filter :authenticate_user!, except: [:release_show_via_ajax_call]

  def new
    @release = Release.new
  end
        
  def create
    @release = Release.create(params[:release])
    respond_to do |format|
      format.html { redirect_to cms_path }
    end
  end

  def show
    respond_to do |format|
      format.html { redirect_to cms_path }
    end
  end
  
  def release_show_via_ajax_call
    @release = Release.find(params[:id])
    render :json => @release
  end

  def index
    @release = Release.all
    respond_to do |format|
      format.html { redirect_to cms_path }
    end
  end

  def edit
    @release = Release.find(params[:id])
  end

  def update   
    @release = Release.find(params[:id])
    if @release.update_attributes(params[:release])
      respond_to do |format|
       format.html { redirect_to cms_path }
      end
    else
      render :action => 'edit'
    end
  end
  
  def send_object_via_ajax
    @release = Release.find(params[:id])
    render :json => @release
  end
  
  
  def destroy
    @release = Release.find(params[:id])
    @release.destroy
    respond_to do |format|
      format.html { redirect_to cms_path }
    end
  end
  
end