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

ActiveRecord::Schema.define(version: 2022_04_04_042316) do

<<<<<<< HEAD
  create_table "available_bikes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "identifier"
    t.integer "current_station_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bike_stations", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "identifier"
    t.string "name"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bikes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "identifier"
=======
  create_table "bikes", charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
>>>>>>> origin/master
    t.integer "current_station_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

<<<<<<< HEAD
  create_table "places", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.decimal "latitude", precision: 10
    t.decimal "longitude", precision: 10
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stations", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "identifier"
=======
  create_table "places", charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
>>>>>>> origin/master
    t.string "name"
    t.decimal "latitude", precision: 10
    t.decimal "longitude", precision: 10
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "has_kiosk"
    t.integer "needs_maintenance"
    t.integer "dock_count"
    t.integer "docked_bike_count"
  end

  create_table "rides", charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.time "duration"
    t.integer "user_id"
    t.integer "bike_id"
    t.integer "start_station_id"
    t.integer "end_station_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stations", charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "name"
    t.boolean "has_kiosk"
    t.boolean "needs_maintenance"
    t.integer "total_slots"
    t.integer "available_slots"
    t.integer "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_number"
    t.integer "miles_ridden"
    t.integer "ride_count"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
