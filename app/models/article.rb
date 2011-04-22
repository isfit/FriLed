class Article < ActiveRecord::Base
  validates :category, :presence => true
  validates :user, :presence => true
  validates :title, :presence => true
  validates :content, :presence => true
  belongs_to :category
  belongs_to :user
end
