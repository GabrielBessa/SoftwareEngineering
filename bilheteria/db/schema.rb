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

ActiveRecord::Schema.define(version: 2019_06_04_120810) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "neighborhood"
    t.integer "number"
    t.string "complement"
    t.integer "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ages", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "buy_tickets", force: :cascade do |t|
    t.integer "ticket"
    t.integer "buyer"
    t.float "value"
    t.date "bought_moment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.integer "phone_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_centers", force: :cascade do |t|
    t.string "name"
    t.integer "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_classes", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "event_type"
    t.date "begin_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_methods", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.integer "buy"
    t.integer "method"
    t.float "paid_value"
    t.date "payment_moment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phones", force: :cascade do |t|
    t.string "number"
    t.integer "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "presentation_rooms", force: :cascade do |t|
    t.integer "presentation"
    t.integer "room"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "presentations", force: :cascade do |t|
    t.integer "event"
    t.date "date"
    t.time "hour"
    t.float "range"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string "number"
    t.boolean "full"
    t.integer "event_center"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.integer "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "ticket_type"
    t.integer "room_and_presentation"
    t.integer "person"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "cpf"
    t.string "name"
    t.string "last_name"
    t.date "birthdate"
    t.string "email"
    t.string "login"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
  end

end
