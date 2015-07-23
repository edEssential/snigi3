class ProductsController < ApplicationController
  before_filter :authenticate_user!

  def new
    @product = Product.new
  end
        
  def create
    @product = Product.create(params[:product])
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
    @product = Product.all
    respond_to do |format|
      format.html { redirect_to cms_path }
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update   
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      respond_to do |format|
       format.html { redirect_to cms_path }
      end
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    respond_to do |format|
      format.html { redirect_to cms_path }
    end
  end
  
end