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

ActiveRecord::Schema.define(version: 2019_05_13_225313) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.string "name"
    t.string "release_date"
    t.integer "number_of_tracks"
    t.string "images"
    t.bigint "artist_id"
    t.string "copyrights"
    t.string "external_urls"
    t.string "label"
    t.index ["artist_id"], name: "index_albums_on_artist_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "genre"
    t.string "image"
  end

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.bigint "review_id"
    t.bigint "user_id"
    t.index ["review_id"], name: "index_comments_on_review_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "content"
    t.integer "rating"
    t.boolean "recommend"
    t.bigint "user_id"
    t.bigint "album_id"
    t.datetime "created_at"
    t.string "title"
    t.bigint "vinyl_id"
    t.index ["album_id"], name: "index_reviews_on_album_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
    t.index ["vinyl_id"], name: "index_reviews_on_vinyl_id"
  end

  create_table "tracks", force: :cascade do |t|
    t.string "name"
    t.integer "duration_ms"
    t.boolean "explicit"
    t.integer "track_number"
    t.bigint "album_id"
    t.index ["album_id"], name: "index_tracks_on_album_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.string "name"
    t.string "image"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vinyls", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "album_id"
    t.datetime "created_at"
    t.integer "rating"
    t.index ["album_id"], name: "index_vinyls_on_album_id"
    t.index ["user_id"], name: "index_vinyls_on_user_id"
  end

  add_foreign_key "reviews", "albums"
  add_foreign_key "reviews", "users"
  add_foreign_key "reviews", "vinyls"
  add_foreign_key "tracks", "albums"
  add_foreign_key "vinyls", "albums"
  add_foreign_key "vinyls", "users"
end
