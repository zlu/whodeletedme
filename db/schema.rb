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

ActiveRecord::Schema.define(:version => 20110107085602) do

  create_table "dumpees", :force => true do |t|
    t.integer  "friend_fb_id"
    t.integer  "reason_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friends", :force => true do |t|
    t.string   "fb_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.boolean  "visible",    :default => true
  end

  add_index "friends", ["fb_id"], :name => "index_friends_on_fb_id"
  add_index "friends", ["user_id"], :name => "index_friends_on_user_id"

  create_table "reasons", :force => true do |t|
    t.string   "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "fb_id",      :limit => 20
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "version",                  :default => 1
  end

end
