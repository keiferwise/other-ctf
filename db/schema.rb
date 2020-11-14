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

ActiveRecord::Schema.define(version: 2020_11_03_024352) do

  create_table "articles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "challenges", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title"
    t.text "description"
    t.integer "point_value"
    t.text "hint"
    t.string "link"
    t.string "connection_string"
    t.bigint "contest_id", null: false
    t.index ["contest_id"], name: "index_challenges_on_contest_id"
  end

  create_table "contests", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title"
    t.string "organiser"
    t.integer "min_team_size"
    t.integer "max_team_size"
    t.datetime "start"
    t.datetime "end"
    t.integer "max_teams"
    t.string "slogan"
    t.boolean "active", default: true
  end

  create_table "flags", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "answer"
    t.bigint "challenge_id", null: false
    t.index ["challenge_id"], name: "index_flags_on_challenge_id"
  end

  create_table "hints", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "challenge_id", null: false
    t.bigint "team_id", null: false
    t.index ["challenge_id"], name: "index_hints_on_challenge_id"
    t.index ["team_id"], name: "index_hints_on_team_id"
  end

  create_table "people", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "bio"
    t.string "first_name"
    t.string "last_name"
    t.binary "picture"
    t.bigint "contest_id", null: false
    t.index ["contest_id"], name: "index_people_on_contest_id"
  end

  create_table "solves", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "points"
    t.boolean "hint_used"
    t.bigint "team_id", null: false
    t.bigint "challenge_id", null: false
    t.index ["challenge_id"], name: "index_solves_on_challenge_id"
    t.index ["team_id"], name: "index_solves_on_team_id"
  end

  create_table "sponsors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title"
    t.binary "logo"
    t.string "link"
    t.string "tier"
    t.string "slogan"
    t.text "about"
    t.bigint "contest_id", null: false
    t.index ["contest_id"], name: "index_sponsors_on_contest_id"
  end

  create_table "teams", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title"
    t.integer "score"
    t.bigint "contest_id", null: false
    t.index ["contest_id"], name: "index_teams_on_contest_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "team_id"
    t.string "first_name"
    t.string "last_name"
    t.bigint "contest_id"
    t.boolean "admin"
    t.string "email", null: false
    t.string "crypted_password"
    t.string "password_salt"
    t.string "single_access_token"
    t.string "perishable_token"
    t.integer "login_count", default: 0, null: false
    t.integer "failed_login_count", default: 0, null: false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string "current_login_ip"
    t.string "last_login_ip"
    t.boolean "active", default: false
    t.boolean "approved", default: false
    t.boolean "confirmed", default: false
    t.string "persistence_token"
    t.string "login"
    t.boolean "staff", default: false
    t.boolean "participant", default: false
    t.index ["contest_id"], name: "index_users_on_contest_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["login"], name: "index_users_on_login", unique: true
    t.index ["perishable_token"], name: "index_users_on_perishable_token", unique: true
    t.index ["persistence_token"], name: "index_users_on_persistence_token", unique: true
    t.index ["single_access_token"], name: "index_users_on_single_access_token", unique: true
    t.index ["team_id"], name: "index_users_on_team_id"
  end

  add_foreign_key "challenges", "contests"
  add_foreign_key "flags", "challenges"
  add_foreign_key "hints", "challenges"
  add_foreign_key "hints", "teams"
  add_foreign_key "people", "contests"
  add_foreign_key "solves", "challenges"
  add_foreign_key "solves", "teams"
  add_foreign_key "sponsors", "contests"
  add_foreign_key "teams", "contests"
  add_foreign_key "users", "contests"
  add_foreign_key "users", "teams"
end
