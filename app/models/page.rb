class Page < ActiveRecord::Base
  validates :title, :presence => true
  validates :content, :presence => true
 # has_attached_file :pageimage, :styles => { :medium => "300x300>", :thumb => "100x100>" }

end
