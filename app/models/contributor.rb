class Contributor < ActiveRecord::Base
  has_many :articles, :dependent => :destroy
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
