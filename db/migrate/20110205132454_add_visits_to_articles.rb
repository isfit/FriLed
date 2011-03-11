class AddVisitsToArticles < ActiveRecord::Migration
  def self.up
    add_column :articles, :visits, :int
  end

  def self.down
    remove_column :articles, :visits
  end
end
