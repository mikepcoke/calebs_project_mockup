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

ActiveRecord::Schema.define(version: 20180211202225) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bible_books", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sermon_author_sermon_series", force: :cascade do |t|
    t.integer  "sermon_author_id"
    t.integer  "sermon_series_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "sermon_authors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sermon_series", force: :cascade do |t|
    t.string   "title"
    t.string   "primary_theme"
    t.string   "secondary_theme"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.text     "summary"
  end

  create_table "sermons", force: :cascade do |t|
    t.string   "title"
    t.string   "passage"
    t.integer  "sermon_author_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "sermon_series_id"
  end

  add_index "sermons", ["sermon_author_id"], name: "index_sermons_on_sermon_author_id", using: :btree

end
