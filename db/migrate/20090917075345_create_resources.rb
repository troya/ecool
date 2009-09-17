class CreateResources < ActiveRecord::Migration
  def self.up
    create_table :resources do |t|
      t.string :title
      t.integer :rating
      t.text :desc
      t.string :avatar
      t.string :type

      t.timestamps
    end
  end

  def self.down
    drop_table :resources
  end
end
