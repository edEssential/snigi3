class Release < ActiveRecord::Base
  attr_accessible :title, :description, :url, :review_1, :review_2, :packshot, :artist
  
  has_attached_file :packshot, styles: {
    medium: '545X545>'
  }
  
  validates_attachment_content_type :packshot, :content_type => %w(image/jpeg image/jpg image/png)
  
end