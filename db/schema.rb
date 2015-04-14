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

ActiveRecord::Schema.define(version: 20150414155015) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string   "name"
    t.text     "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "karaoke_machines", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "karaoke_places", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "karaoke_machine_id"
    t.decimal  "latitude",           precision: 9, scale: 6
    t.decimal  "longitude",          precision: 9, scale: 6
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "karaoke_places", ["karaoke_machine_id"], name: "index_karaoke_places_on_karaoke_machine_id", using: :btree

  create_table "karaoke_songs", force: :cascade do |t|
    t.string   "key"
    t.integer  "song_id"
    t.integer  "karaoke_machine_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "karaoke_songs", ["karaoke_machine_id"], name: "index_karaoke_songs_on_karaoke_machine_id", using: :btree
  add_index "karaoke_songs", ["song_id"], name: "index_karaoke_songs_on_song_id", using: :btree

  create_table "songs", force: :cascade do |t|
    t.string   "name"
    t.string   "original_name"
    t.text     "description"
    t.date     "released_at"
    t.integer  "artist_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "songs", ["artist_id"], name: "index_songs_on_artist_id", using: :btree

  add_foreign_key "karaoke_places", "karaoke_machines"
  add_foreign_key "karaoke_songs", "karaoke_machines"
  add_foreign_key "karaoke_songs", "songs"
  add_foreign_key "songs", "artists"
end
