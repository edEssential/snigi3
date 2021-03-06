# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20150715152106) do

  create_table "contacts", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "user_message", :limit => 255
    t.string   "message_text"
    t.string   "thanks_text"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "artist"
    t.string   "title"
    t.text     "description"
    t.string   "review_1"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "packshot_file_name"
    t.string   "packshot_content_type"
    t.integer  "packshot_file_size"
    t.datetime "packshot_updated_at"
    t.string   "format"
    t.string   "price"
  end

  create_table "releases", :force => true do |t|
    t.string   "artist"
    t.string   "title"
    t.text     "description"
    t.string   "url"
    t.string   "review_1"
    t.string   "review_2"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "packshot_file_name"
    t.string   "packshot_content_type"
    t.integer  "packshot_file_size"
    t.datetime "packshot_updated_at"
  end

  create_table "shows", :force => true do |t|
    t.string   "title"
    t.date     "date"
    t.string   "venue"
    t.string   "location"
    t.string   "buylink"
    t.string   "artist"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "name"
    t.string   "gender"
    t.string   "resting_hr_1"
    t.string   "after_happy_hr"
    t.string   "resting_hr_2"
    t.string   "after_sad_hr"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "videos", :force => true do |t|
    t.string   "url"
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
