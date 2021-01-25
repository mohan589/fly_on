# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_25_061301) do

  create_table "airlines", force: :cascade do |t|
    t.string "name", null: false
    t.string "code", null: false
    t.integer "airport_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_airlines_on_code"
  end

  create_table "airports", force: :cascade do |t|
    t.string "name", null: false
    t.string "port_code", null: false
    t.string "city"
    t.string "state"
    t.integer "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["port_code"], name: "index_airports_on_port_code"
  end

  create_table "notifications", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.boolean "email_notification"
    t.boolean "sms_notification"
    t.text "remarks_on_failure"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.string "transaction_reference_number"
    t.boolean "status"
    t.bigint "fare_without_tax"
    t.integer "tax_percent"
    t.bigint "total_fare"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plane_models", force: :cascade do |t|
    t.bigint "airline_id", null: false
    t.bigint "plane_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "planes", force: :cascade do |t|
    t.bigint "airline_id", null: false
    t.bigint "origin_id"
    t.bigint "destination_id"
    t.string "plane_code", null: false
    t.string "status"
    t.datetime "plane_date"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plane_code"], name: "index_planes_on_plane_code"
  end

  create_table "schedules", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "plane_id", null: false
    t.integer "from_id", null: false
    t.integer "to_id", null: false
    t.bigint "payment_id", null: false
    t.string "coupon_code"
    t.boolean "opt_insurance"
    t.datetime "schedule_date"
    t.string "pnr", null: false
    t.string "assigned_seat_number"
    t.boolean "booking_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seat_settings", force: :cascade do |t|
    t.bigint "plane_model_id", null: false
    t.integer "number_of_seats_per_row"
    t.integer "class_title_id"
    t.integer "rows_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plane_model_id"], name: "index_seat_settings_on_plane_model_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.text "address"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
