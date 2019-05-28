
ActiveRecord::Schema.define(version: 2019_05_28_110732) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "meetings", force: :cascade do |t|
    t.bigint "users_id"
    t.string "topic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_meetings_on_users_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "comment"
    t.integer "rating"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "slots", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "start"
    t.datetime "end"
    t.bigint "meeting_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meeting_id"], name: "index_slots_on_meeting_id"
    t.index ["user_id"], name: "index_slots_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.text "bio"
    t.string "native_language"
    t.string "specialty"

    t.string "video"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"

    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "meetings", "users", column: "users_id"
  add_foreign_key "reviews", "users"
  add_foreign_key "slots", "meetings"
  add_foreign_key "slots", "users"
end
