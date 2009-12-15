class CreateTvShows < ActiveRecord::Migration
  def self.up
    create_table :tv_shows do |t|
      t.string :title
      t.string :url_key
      t.integer :rate
      t.string :imdb_key
      t.text :desc

      t.timestamps
    end
  end

  def self.down
    drop_table :tv_shows
  end
end
