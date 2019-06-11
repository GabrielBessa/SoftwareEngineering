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

ActiveRecord::Schema.define(version: 2019_06_11_183618) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "neighborhood"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "city_id"
    t.index ["city_id"], name: "index_addresses_on_city_id"
  end

  create_table "age_groups", force: :cascade do |t|
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "buy_tickets", force: :cascade do |t|
    t.datetime "bought_moment"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ticket_id"
    t.bigint "user_id"
    t.index ["ticket_id"], name: "index_buy_tickets_on_ticket_id"
    t.index ["user_id"], name: "index_buy_tickets_on_user_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_centers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "address_id"
    t.index ["address_id"], name: "index_event_centers_on_address_id"
  end

  create_table "event_classes", force: :cascade do |t|
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.date "begin_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "event_class_id"
    t.bigint "age_group_id"
    t.index ["age_group_id"], name: "index_events_on_age_group_id"
    t.index ["event_class_id"], name: "index_events_on_event_class_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "payment_methods", force: :cascade do |t|
    t.string "method"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.datetime "payment_moment"
    t.float "paid_amount"
    t.float "change_money"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "buy_ticket_id"
    t.bigint "payment_method_id"
    t.index ["buy_ticket_id"], name: "index_payments_on_buy_ticket_id"
    t.index ["payment_method_id"], name: "index_payments_on_payment_method_id"
  end

  create_table "presentation_rooms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "presentation_id"
    t.bigint "room_id"
    t.index ["presentation_id"], name: "index_presentation_rooms_on_presentation_id"
    t.index ["room_id"], name: "index_presentation_rooms_on_room_id"
  end

  create_table "presentations", force: :cascade do |t|
    t.date "date"
    t.time "hour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "number"
    t.boolean "crowded"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "event_center_id"
    t.index ["event_center_id"], name: "index_rooms_on_event_center_id"
  end

  create_table "ticket_types", force: :cascade do |t|
    t.text "description"
    t.float "base_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ticket_type_id"
    t.bigint "presentation_room_id"
    t.bigint "user_id"
    t.index ["presentation_room_id"], name: "index_tickets_on_presentation_room_id"
    t.index ["ticket_type_id"], name: "index_tickets_on_ticket_type_id"
    t.index ["user_id"], name: "index_tickets_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "addresses", "cities"
  add_foreign_key "buy_tickets", "tickets"
  add_foreign_key "buy_tickets", "users"
  add_foreign_key "event_centers", "addresses"
  add_foreign_key "events", "age_groups"
  add_foreign_key "events", "event_classes"
  add_foreign_key "events", "users"
  add_foreign_key "payments", "buy_tickets"
  add_foreign_key "payments", "payment_methods"
  add_foreign_key "presentation_rooms", "presentations"
  add_foreign_key "presentation_rooms", "rooms"
  add_foreign_key "rooms", "event_centers"
  add_foreign_key "tickets", "presentation_rooms"
  add_foreign_key "tickets", "ticket_types"
  add_foreign_key "tickets", "users"
end
