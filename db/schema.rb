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

ActiveRecord::Schema.define(version: 2022_03_30_211042) do

  create_table "bikes", charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.integer "current_station_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stations", charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.integer "identifier"
    t.string "name"
    t.string "address"
    t.boolean "has_kiosk"
    t.boolean "needs_maintenance"
    t.integer "total_slots"
    t.integer "available_slots"
    t.decimal "lat", precision: 16, scale: 13
    t.decimal "lng", precision: 16, scale: 13
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "name"
    t.string "email"
    t.text "fun_fact"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
