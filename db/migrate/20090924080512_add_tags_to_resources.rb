class AddTagsToResources < ActiveRecord::Migration
  def self.up
    add_column :resources, :tags, :string
  end

  def self.down
    remove_column :resources, :tags
  end
end
