class Article < ActiveRecord::Base
  validates :category, :presence => true
  validates :contributor, :presence => true
  validates :title, :presence => true
  validates :content, :presence => true
  belongs_to :category
  belongs_to :contributor
  has_many :comments, :dependent => :destroy
end
