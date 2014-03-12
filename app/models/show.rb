class Show < ActiveRecord::Base
  attr_accessible :artist, :date, :location, :venue, :buylink
  
  def self.past_shows
    where('date <?', Date.today).where('date >?', Date.today.ago(1.year))
  end
  
  def self.upcoming_shows
    where('date >=?', Date.today)
  end
  
end