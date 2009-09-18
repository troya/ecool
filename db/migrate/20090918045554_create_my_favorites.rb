class CreateMyFavorites < ActiveRecord::Migration
  def self.up
    create_table :my_favorites do |t|
      t.integer :user_id
      t.integer :resource_id

      t.timestamps
    end
  end

  def self.down
    drop_table :my_favorites
  end
end
