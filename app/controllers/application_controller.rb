class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def bring_in_models
    @releases = Release.order("id DESC")
  end
  
end