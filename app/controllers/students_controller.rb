class StudentsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]
  
  def new
    @student = Student.new
  end
        
  def create
    @student = Student.create(params[:student])
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
    @students = Student.order("gender DESC")
    respond_to do |format|
      format.html
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update   
    @student = Student.find(params[:id])
    if @student.update_attributes(params[:student])
      respond_to do |format|
       format.html { redirect_to cms_path }
      end
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    respond_to do |format|
      format.html { redirect_to cms_path }
    end
  end
end
