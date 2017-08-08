# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20170808004659) do

  create_table "addresses", force: :cascade do |t|
    t.string   "street_1"
    t.string   "street_2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.integer  "zip_code"
    t.integer  "user_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "addresses", ["user_id_id"], name: "index_addresses_on_user_id_id"

  create_table "comments", force: :cascade do |t|
    t.text     "comment"
    t.integer  "item_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["item_id"], name: "index_comments_on_item_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "item_orders", force: :cascade do |t|
    t.integer  "item_id_id"
    t.integer  "order_id_id"
    t.date     "date"
    t.integer  "quantity"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "item_orders", ["item_id_id"], name: "index_item_orders_on_item_id_id"
  add_index "item_orders", ["order_id_id"], name: "index_item_orders_on_order_id_id"

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "quantity"
    t.string   "color"
    t.string   "size"
    t.string   "style"
    t.string   "gender"
    t.integer  "age"
    t.string   "photo"
    t.decimal  "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id_id"
    t.date     "date"
    t.decimal  "cost"
    t.integer  "address_id_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "orders", ["user_id_id"], name: "index_orders_on_user_id_id"

  create_table "ratings", force: :cascade do |t|
    t.integer  "rating"
    t.integer  "item_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ratings", ["item_id"], name: "index_ratings_on_item_id"
  add_index "ratings", ["user_id"], name: "index_ratings_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "username"
    t.integer  "address_id_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
