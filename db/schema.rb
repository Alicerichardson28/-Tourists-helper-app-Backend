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

ActiveRecord::Schema.define(version: 2020_03_24_165602) do

  create_table "adventures", force: :cascade do |t|
    t.integer "country_id", null: false
    t.text "image_url"
    t.text "things_todo"
    t.text "about"
    t.text "visitors_review"
    t.float "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_adventures_on_country_id"
  end

  create_table "continents", force: :cascade do |t|
    t.string "name"
    t.text "image_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.text "about"
    t.string "language"
    t.text "trip_planing"
    t.text "place_to_stay"
    t.text "popular_foods"
    t.text "image_url"
    t.text "video_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "adventures", "countries"
end
