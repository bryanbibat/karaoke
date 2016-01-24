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

ActiveRecord::Schema.define(version: 20160124151107) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
    t.string   "name"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "artists", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "slug"
    t.string   "original_name"
  end

  add_index "artists", ["slug"], name: "index_artists_on_slug", unique: true, using: :btree

  create_table "collabs", force: :cascade do |t|
    t.integer  "collaborator_id"
    t.integer  "collaboration_id"
    t.string   "role"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "collabs", ["collaboration_id"], name: "index_collabs_on_collaboration_id", using: :btree
  add_index "collabs", ["collaborator_id"], name: "index_collabs_on_collaborator_id", using: :btree

  create_table "franchises", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.text     "description"
    t.integer  "karaoke_machine_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "franchises", ["karaoke_machine_id"], name: "index_franchises_on_karaoke_machine_id", using: :btree

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "karaoke_machines", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "slug"
    t.string   "mark_text"
    t.string   "mark_class"
  end

  add_index "karaoke_machines", ["slug"], name: "index_karaoke_machines_on_slug", unique: true, using: :btree

  create_table "karaoke_places", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "karaoke_machine_id"
    t.decimal  "latitude",           precision: 9, scale: 6
    t.decimal  "longitude",          precision: 9, scale: 6
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.string   "slug"
    t.string   "address"
    t.integer  "franchise_id"
  end

  add_index "karaoke_places", ["franchise_id"], name: "index_karaoke_places_on_franchise_id", using: :btree
  add_index "karaoke_places", ["karaoke_machine_id"], name: "index_karaoke_places_on_karaoke_machine_id", using: :btree
  add_index "karaoke_places", ["slug"], name: "index_karaoke_places_on_slug", unique: true, using: :btree

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
    t.string   "slug"
    t.string   "notes"
  end

  add_index "songs", ["artist_id"], name: "index_songs_on_artist_id", using: :btree
  add_index "songs", ["slug"], name: "index_songs_on_slug", unique: true, using: :btree

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  create_table "version_associations", force: :cascade do |t|
    t.integer "version_id"
    t.string  "foreign_key_name", null: false
    t.integer "foreign_key_id"
  end

  add_index "version_associations", ["foreign_key_name", "foreign_key_id"], name: "index_version_associations_on_foreign_key", using: :btree
  add_index "version_associations", ["version_id"], name: "index_version_associations_on_version_id", using: :btree

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",      null: false
    t.integer  "item_id",        null: false
    t.string   "event",          null: false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
    t.text     "object_changes"
    t.integer  "transaction_id"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree
  add_index "versions", ["transaction_id"], name: "index_versions_on_transaction_id", using: :btree

  add_foreign_key "franchises", "karaoke_machines"
  add_foreign_key "karaoke_places", "franchises"
  add_foreign_key "karaoke_places", "karaoke_machines"
  add_foreign_key "karaoke_songs", "karaoke_machines"
  add_foreign_key "karaoke_songs", "songs"
  add_foreign_key "songs", "artists"
end
