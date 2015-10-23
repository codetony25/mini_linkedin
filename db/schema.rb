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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151020222106) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "connects", force: true do |t|
    t.integer  "user_id"
    t.integer  "connect_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "connects", ["connect_id"], name: "index_connects_on_connect_id", using: :btree
  add_index "connects", ["user_id"], name: "index_connects_on_user_id", using: :btree

  create_table "friends", force: true do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "friends", ["friend_id"], name: "index_friends_on_friend_id", using: :btree
  add_index "friends", ["user_id"], name: "index_friends_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
