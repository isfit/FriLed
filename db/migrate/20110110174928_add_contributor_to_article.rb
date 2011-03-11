class AddContributorToArticle < ActiveRecord::Migration
  def self.up
    add_column :articles, :contributor_id, :int
  end

  def self.down
    remove_column :articles, :contributor_id
  end
end
