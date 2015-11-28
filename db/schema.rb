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

ActiveRecord::Schema.define(version: 20151128093004) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",               default: 0, null: false
    t.integer  "attempts",               default: 0, null: false
    t.text     "handler",                            null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by",  limit: 255
    t.string   "queue",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",           limit: 255, null: false
    t.integer  "sluggable_id",               null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope",          limit: 255
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "game_translations", force: :cascade do |t|
    t.integer  "game_id",     null: false
    t.string   "locale",      null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "title"
    t.string   "name"
    t.string   "content"
    t.string   "description"
  end

  add_index "game_translations", ["game_id"], name: "index_game_translations_on_game_id", using: :btree
  add_index "game_translations", ["locale"], name: "index_game_translations_on_locale", using: :btree

  create_table "games", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.string   "name",        limit: 255
    t.text     "content"
    t.string   "slug",        limit: 255
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nicknames", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
  end

  create_table "race_translations", force: :cascade do |t|
    t.integer  "race_id",     null: false
    t.string   "locale",      null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "title"
    t.string   "name"
    t.string   "content"
    t.string   "description"
    t.string   "shortname"
  end

  add_index "race_translations", ["locale"], name: "index_race_translations_on_locale", using: :btree
  add_index "race_translations", ["race_id"], name: "index_race_translations_on_race_id", using: :btree

  create_table "races", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.string   "name",        limit: 255
    t.text     "content"
    t.string   "slug",        limit: 255
    t.text     "description"
    t.integer  "game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "shortname",   limit: 255
  end

  create_table "statistics", force: :cascade do |t|
    t.datetime "created_at"
    t.integer  "wow"
    t.integer  "gw"
    t.integer  "samp"
    t.integer  "minecraft"
    t.integer  "wow_human"
    t.integer  "dwarf"
    t.integer  "gnome"
    t.integer  "nightelf"
    t.integer  "draenei"
    t.integer  "worgen"
    t.integer  "pandaren"
    t.integer  "orc"
    t.integer  "troll"
    t.integer  "tauren"
    t.integer  "undead"
    t.integer  "bloodelf"
    t.integer  "goblin"
    t.integer  "gw_human"
    t.integer  "asura"
    t.integer  "sylvari"
    t.integer  "norn"
    t.integer  "charr"
    t.integer  "english"
    t.integer  "german"
    t.integer  "french"
    t.integer  "italian"
    t.integer  "danish"
    t.integer  "swedish"
    t.integer  "spanish"
    t.integer  "steve"
    t.integer  "male"
    t.integer  "female"
    t.integer  "dota"
  end

  create_table "syllables", force: :cascade do |t|
    t.string "game",     limit: 255
    t.string "race",     limit: 255
    t.string "sex",      limit: 255
    t.string "position", limit: 255
    t.string "syllable", limit: 255
    t.string "namepart", limit: 255
  end

  add_index "syllables", ["syllable"], name: "index_syllables_on_syllable", using: :btree

end
