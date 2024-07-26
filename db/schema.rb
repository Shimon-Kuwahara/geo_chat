# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_07_25_082602) do
  create_table "chats", force: :cascade do |t|
    t.integer "user_id"
    t.integer "room_id"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "unread", default: true, null: false
  end

  create_table "exchanges", force: :cascade do |t|
    t.integer "user_id"
    t.integer "exchanging_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "matched_user_id", null: false
    t.float "match_latitude"
    t.float "match_longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["matched_user_id"], name: "index_matches_on_matched_user_id"
    t.index ["user_id"], name: "index_matches_on_user_id"
  end

  create_table "piece_sets", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pieces", force: :cascade do |t|
    t.string "name"
    t.integer "piece_set_id"
    t.decimal "location_north"
    t.decimal "location_south"
    t.decimal "location_east"
    t.decimal "location_west"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sns_credentials", force: :cascade do |t|
    t.string "provider"
    t.string "uid"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sns_credentials_on_user_id"
  end

  create_table "user_pieces", force: :cascade do |t|
    t.integer "user_id"
    t.integer "piece_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_rooms", force: :cascade do |t|
    t.integer "user_id"
    t.integer "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "user_id"
    t.text "profile"
    t.string "profile_image"
    t.integer "age"
    t.string "academic_year"
    t.string "department"
    t.string "hometown"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "match_distance", default: 3, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "matches", "users"
  add_foreign_key "matches", "users", column: "matched_user_id"
  add_foreign_key "sns_credentials", "users"
end
