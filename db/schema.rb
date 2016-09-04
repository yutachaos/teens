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

ActiveRecord::Schema.define(version: 20160904030523) do

  create_table "comments", force: :cascade do |t|
    t.integer  "event_id",   limit: 4
    t.string   "comment",    limit: 255
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "event_users", force: :cascade do |t|
    t.integer  "event_id",    limit: 4
    t.integer  "user_id",     limit: 4
    t.string   "user_file",   limit: 255
    t.string   "mem_comment", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "details",    limit: 65535
    t.string   "movie_url",  limit: 255
    t.string   "event_date", limit: 255
    t.integer  "post_flag",  limit: 4
    t.integer  "min_count",  limit: 4
    t.integer  "max_count",  limit: 4
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "theme",      limit: 255
    t.integer  "price",      limit: 4
    t.string   "file",       limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "email",       limit: 255
    t.string   "password",    limit: 255
    t.string   "description", limit: 255
    t.integer  "role",        limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end
