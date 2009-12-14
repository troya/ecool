class AddUrlKey < ActiveRecord::Migration
  def self.up
    add_column :movies, :url_key, :string
    add_index :movies, :url_key
  end

  def self.down
     remove_column :movies, :url_key
  end
end
