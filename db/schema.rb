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

ActiveRecord::Schema.define(version: 2020_03_19_143808) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.bigint "eatery_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["eatery_id"], name: "index_categories_on_eatery_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "stripe_id"
    t.string "card_brand"
    t.string "card_last4"
    t.string "card_exp_month"
    t.string "card_exp_year"
    t.datetime "expires_at"
    t.index ["email"], name: "index_clients_on_email", unique: true
    t.index ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true
  end

  create_table "clients_tables", force: :cascade do |t|
    t.bigint "client_id"
    t.bigint "table_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_clients_tables_on_client_id"
    t.index ["table_id"], name: "index_clients_tables_on_table_id"
  end

  create_table "eateries", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "type"
    t.string "description"
    t.string "address"
    t.integer "capacity"
    t.time "opening_hour"
    t.time "closing_hour"
    t.index ["email"], name: "index_eateries_on_email", unique: true
    t.index ["reset_password_token"], name: "index_eateries_on_reset_password_token", unique: true
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "date"
    t.bigint "eatery_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["eatery_id"], name: "index_events_on_eatery_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "ingredients"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_menus_on_category_id"
  end

  create_table "order_menus", force: :cascade do |t|
    t.bigint "order_id"
    t.bigint "menu_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_id"], name: "index_order_menus_on_menu_id"
    t.index ["order_id"], name: "index_order_menus_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "order_number"
    t.bigint "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_orders_on_client_id"
  end

  create_table "qr_code_readers", force: :cascade do |t|
    t.bigint "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_qr_code_readers_on_client_id"
  end

  create_table "qr_codes", force: :cascade do |t|
    t.bigint "qr_code_reader_id"
    t.bigint "menu_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_id"], name: "index_qr_codes_on_menu_id"
    t.index ["qr_code_reader_id"], name: "index_qr_codes_on_qr_code_reader_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "rating"
    t.bigint "client_id"
    t.bigint "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_reviews_on_client_id"
    t.index ["order_id"], name: "index_reviews_on_order_id"
  end

  create_table "tables", force: :cascade do |t|
    t.integer "table_number"
    t.boolean "ocupancy"
    t.bigint "eatery_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["eatery_id"], name: "index_tables_on_eatery_id"
  end

  add_foreign_key "categories", "eateries"
  add_foreign_key "clients_tables", "clients"
  add_foreign_key "clients_tables", "tables"
  add_foreign_key "events", "eateries"
  add_foreign_key "menus", "categories"
  add_foreign_key "order_menus", "menus"
  add_foreign_key "order_menus", "orders"
  add_foreign_key "orders", "clients"
  add_foreign_key "qr_code_readers", "clients"
  add_foreign_key "qr_codes", "menus"
  add_foreign_key "qr_codes", "qr_code_readers"
  add_foreign_key "reviews", "clients"
  add_foreign_key "reviews", "orders"
  add_foreign_key "tables", "eateries"
end
