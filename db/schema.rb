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

ActiveRecord::Schema.define(version: 20141208211032) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "plperl"

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "friendly_id_slugs", force: true do |t|
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

  create_table "games", force: true do |t|
    t.string   "title"
    t.string   "name"
    t.string   "content"
    t.string   "slug"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gw2s", force: true do |t|
    t.text     "game"
    t.text     "racename"
    t.text     "pagename"
    t.text     "title"
    t.text     "desc"
    t.text     "customcode"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "slug"
    t.string   "seo_description"
  end

  add_index "gw2s", ["slug"], name: "index_gw2s_on_slug", using: :btree

  create_table "minecrafts", force: true do |t|
    t.text     "game"
    t.text     "racename"
    t.text     "pagename"
    t.text     "title"
    t.text     "desc"
    t.text     "customcode"
    t.string   "seo_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nicknames", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
  end

  create_table "races", force: true do |t|
    t.string   "title"
    t.string   "name"
    t.string   "content"
    t.string   "slug"
    t.string   "description"
    t.integer  "game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "samps", force: true do |t|
    t.text     "game"
    t.text     "racename"
    t.text     "pagename"
    t.text     "title"
    t.text     "desc"
    t.text     "customcode"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "slug"
    t.string   "seo_description"
  end

  add_index "samps", ["slug"], name: "index_samps_on_slug", using: :btree

  create_table "statistics", force: true do |t|
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
  end

  create_table "syllables", force: true do |t|
    t.string   "game"
    t.string   "race"
    t.string   "sex"
    t.string   "position"
    t.string   "syllable"
    t.string   "namepart"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "wows", force: true do |t|
    t.text     "game"
    t.text     "racename"
    t.text     "pagename"
    t.text     "title"
    t.text     "desc"
    t.text     "customcode"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "slug"
    t.string   "seo_description"
  end

end
