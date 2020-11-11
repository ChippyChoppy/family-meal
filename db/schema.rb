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

ActiveRecord::Schema.define(version: 2020_11_09_191151) do

  create_table "diners", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "email"
    t.string "location"
    t.string "dietary_restriction"
    t.string "profile_pic"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dishes", force: :cascade do |t|
    t.string "name"
    t.text "ingredient"
    t.text "description"
    t.string "dish_pic"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "homecooks", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "email"
    t.text "bio"
    t.string "neighborhood"
    t.string "cuisine"
    t.string "address"
    t.string "open"
    t.string "profile_pic"
    t.string "home_pic"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "menus", force: :cascade do |t|
    t.integer "dish_id", null: false
    t.integer "homecook_id", null: false
    t.string "availability"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dish_id"], name: "index_menus_on_dish_id"
    t.index ["homecook_id"], name: "index_menus_on_homecook_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "homecook_id", null: false
    t.integer "diner_id", null: false
    t.integer "party_size"
    t.date "date"
    t.integer "time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["diner_id"], name: "index_reservations_on_diner_id"
    t.index ["homecook_id"], name: "index_reservations_on_homecook_id"
  end

  add_foreign_key "menus", "dishes"
  add_foreign_key "menus", "homecooks"
  add_foreign_key "reservations", "diners"
  add_foreign_key "reservations", "homecooks"
end
