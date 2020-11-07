# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2017_01_23_155130) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "friendly_id_slugs", id: :serial, force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "game_translations", force: :cascade do |t|
    t.integer "game_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title"
    t.string "name"
    t.text "content"
    t.index ["game_id"], name: "index_game_translations_on_game_id"
    t.index ["locale"], name: "index_game_translations_on_locale"
  end

  create_table "games", id: :serial, force: :cascade do |t|
    t.string "title"
    t.string "name"
    t.text "content"
    t.string "slug"
    t.text "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nicknames", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at"
  end

  create_table "race_translations", force: :cascade do |t|
    t.integer "race_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title"
    t.string "name"
    t.text "content"
    t.index ["locale"], name: "index_race_translations_on_locale"
    t.index ["race_id"], name: "index_race_translations_on_race_id"
  end

  create_table "races", id: :serial, force: :cascade do |t|
    t.string "title"
    t.string "name"
    t.text "content"
    t.string "slug"
    t.text "description"
    t.integer "game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "shortname"
  end

  create_table "statistics", id: :serial, force: :cascade do |t|
    t.datetime "created_at"
    t.integer "wow"
    t.integer "gw"
    t.integer "samp"
    t.integer "minecraft"
    t.integer "wow_human"
    t.integer "dwarf"
    t.integer "gnome"
    t.integer "nightelf"
    t.integer "draenei"
    t.integer "worgen"
    t.integer "pandaren"
    t.integer "orc"
    t.integer "troll"
    t.integer "tauren"
    t.integer "undead"
    t.integer "bloodelf"
    t.integer "goblin"
    t.integer "gw_human"
    t.integer "asura"
    t.integer "sylvari"
    t.integer "norn"
    t.integer "charr"
    t.integer "english"
    t.integer "german"
    t.integer "french"
    t.integer "italian"
    t.integer "danish"
    t.integer "swedish"
    t.integer "spanish"
    t.integer "steve"
    t.integer "male"
    t.integer "female"
    t.integer "dota"
  end

  create_table "syllables", id: :serial, force: :cascade do |t|
    t.string "game"
    t.string "race"
    t.string "sex"
    t.string "position"
    t.string "syllable"
    t.string "namepart"
    t.integer "game_id", default: 0, null: false
    t.integer "race_id", default: 0, null: false
    t.index ["game_id"], name: "index_syllables_on_game_id"
    t.index ["race_id"], name: "index_syllables_on_race_id"
  end

end
