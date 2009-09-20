class CreateProfiles < ActiveRecord::Migration
  def self.up
    create_table :profiles do |t|
      t.string :main_privacy
      t.string :friends_list_privacy
      t.string :email_privacy
      t.string :comments_privacy
      t.string :address
      t.string :city
      t.text :desc

      t.timestamps
    end
  end

  def self.down
    drop_table :profiles
  end
end
