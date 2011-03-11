class AddImageDetailsToContributor < ActiveRecord::Migration
  def self.up
    add_column :contributors, :avatar_file_name, :string
    add_column :contributors, :avatar_content_type, :string
    add_column :contributors, :avatar_file_size, :integer
    add_column :contributors, :avatar_updated_at, :datetime
  end

  def self.down
    remove_column :contributors, :avatar_updated_at
    remove_column :contributors, :avatar_file_size
    remove_column :contributors, :avatar_content_type
    remove_column :contributors, :avatar_file_name
  end
end
