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

ActiveRecord::Schema.define(version: 2020_11_29_025056) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bike_stations", force: :cascade do |t|
    t.string "location"
    t.string "borough"
    t.integer "number_of_bike_racks"
    t.integer "available_bike_racks"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "check_ins", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "bike_station_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "location"
    t.index ["bike_station_id"], name: "index_check_ins_on_bike_station_id"
    t.index ["user_id"], name: "index_check_ins_on_user_id"
  end

  create_table "favorite_stations", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "bike_station_id"
    t.string "location"
    t.string "borough"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bike_station_id"], name: "index_favorite_stations_on_bike_station_id"
    t.index ["user_id"], name: "index_favorite_stations_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "bike_station_id"
    t.text "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.index ["bike_station_id"], name: "index_reviews_on_bike_station_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.text "bike"
    t.text "bio"
    t.text "avatar"
  end

  add_foreign_key "check_ins", "bike_stations"
  add_foreign_key "check_ins", "users"
  add_foreign_key "favorite_stations", "bike_stations"
  add_foreign_key "favorite_stations", "users"
  add_foreign_key "reviews", "bike_stations"
  add_foreign_key "reviews", "users"
end
