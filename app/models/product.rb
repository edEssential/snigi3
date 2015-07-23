class Product < ActiveRecord::Base
  attr_accessible :artist, :title, :description, :review_1, :format, :price, :packshot
  
  has_attached_file :packshot, styles: {
    medium: '545X545>'
  }
  
  validates_attachment_content_type :packshot, :content_type => %w(image/jpeg image/jpg image/png)
  
end