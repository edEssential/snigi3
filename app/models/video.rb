class Video < ActiveRecord::Base
  attr_accessible :title, :url
  
  auto_html_for :url do
    youtube(:width => 945, :height => 616)
    vimeo(:width => 945, :height => 616)
    link :target => "_blank", :rel => "nofollow"
    simple_format
  end
  
end