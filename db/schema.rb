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

ActiveRecord::Schema.define(version: 2021_03_15_233614) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dish_reviews", force: :cascade do |t|
    t.text "review"
    t.integer "rating"
    t.bigint "dish_id"
    t.bigint "user_id"
    t.index ["dish_id"], name: "index_dish_reviews_on_dish_id"
    t.index ["user_id"], name: "index_dish_reviews_on_user_id"
  end

  create_table "dishes", force: :cascade do |t|
    t.string "dish_name"
    t.float "price"
    t.text "description"
    t.bigint "restaurant_id"
    t.index ["restaurant_id"], name: "index_dishes_on_restaurant_id"
  end

  create_table "restaurant_reviews", force: :cascade do |t|
    t.text "review"
    t.integer "rating"
    t.bigint "restaurant_id"
    t.bigint "user_id"
    t.index ["restaurant_id"], name: "index_restaurant_reviews_on_restaurant_id"
    t.index ["user_id"], name: "index_restaurant_reviews_on_user_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.float "latitude"
    t.float "longitude"
    t.string "phone_number"
    t.string "street_name"
    t.string "street_number"
    t.string "city"
    t.string "state"
    t.string "zip_code"
  end

  create_table "users", force: :cascade do |t|
    t.string "phone_number"
    t.string "first_name"
    t.string "last_name"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.string "email_address"
    t.string "password"
  end

end
