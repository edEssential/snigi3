class VideosController < ApplicationController
  before_filter :authenticate_user!
  
    def new
      @video = Video.new
    end

    def create
      @video = Video.create(params[:video])
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
      @video = Video.all
      respond_to do |format|
        format.html { redirect_to cms_path }
      end
    end

    def edit
      @video = Video.find(params[:id])
    end

    def update   
      @video = Video.find(params[:id])
      if @video.update_attributes(params[:video])
        respond_to do |format|
         format.html { redirect_to cms_path }
        end
      else
        render :action => 'edit'
      end
    end
    
    def send_object_via_ajax
      @video = Video.find(params[:id])
      render :json => @video
    end  


    def destroy
      @video = Video.find(params[:id])
      @video.destroy
      respond_to do |format|
        format.html { redirect_to cms_path }
      end
    end

  end