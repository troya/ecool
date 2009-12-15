# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091214052315) do

  create_table "friend_ships", :force => true do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.string   "group"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movies", :force => true do |t|
    t.string   "title"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "my_favorites", :force => true do |t|
    t.integer  "user_id"
    t.integer  "resource_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", :force => true do |t|
    t.string   "main_privacy"
    t.string   "friends_list_privacy"
    t.string   "email_privacy"
    t.string   "comments_privacy"
    t.string   "address"
    t.string   "city"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "resources", :force => true do |t|
    t.string   "title"
    t.integer  "rating"
    t.text     "desc"
    t.string   "avatar"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tags"
  end

  create_table "tv_shows", :force => true do |t|
    t.string   "title"
    t.string   "url_key"
    t.integer  "rate"
    t.string   "imdb_key"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "activation_code",           :limit => 40
    t.datetime "activated_at"
  end

end
