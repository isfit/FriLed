class AddYoutubeLinkToArticles < ActiveRecord::Migration
  def self.up
    add_column :articles, :youtube_link, :string
  end

  def self.down
    remove_column :articles, :youtube_link
  end
end
