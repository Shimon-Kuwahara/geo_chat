ActiveRecord::Schema[7.0].define(version: 2024_05_31_100342) do
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
  end

  add_foreign_key "matches", "users"
  add_foreign_key "matches", "users", column: "matched_user_id"
end
