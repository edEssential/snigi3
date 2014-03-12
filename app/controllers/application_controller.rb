class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def bring_in_models
    @upcoming_shows = Show.upcoming_shows.order("date DESC")
    @past_shows = Show.past_shows.order("date DESC")
    @releases = Release.order("id DESC")
    @videos = Video.order("id DESC")
    @contact = Contact.new
    @contacts = Contact.all
    @admin = Contact.first
    @shows = Show.all
  end
  
end