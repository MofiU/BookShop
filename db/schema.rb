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

ActiveRecord::Schema.define(version: 20160708103152) do

  create_table "accounts", force: :cascade do |t|
    t.integer  "user_id"
    t.decimal  "amount",     precision: 16, scale: 4, default: 0.0, null: false
    t.decimal  "balance",    precision: 16, scale: 4, default: 0.0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "book_orders", force: :cascade do |t|
    t.integer "book_id"
    t.integer "order_id"
  end

  create_table "books", force: :cascade do |t|
    t.integer  "discount_id"
    t.integer  "cetegory_id"
    t.string   "name",                                                       null: false
    t.string   "author",                                                     null: false
    t.string   "publisher",                                                  null: false
    t.string   "number",                                                     null: false
    t.decimal  "price",        precision: 16, scale: 4, default: 0.0,        null: false
    t.string   "introduction"
    t.integer  "inventory",                             default: 0,          null: false
    t.string   "status",                                default: "inactive", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",                          null: false
    t.string   "status",     default: "active", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "discounts", force: :cascade do |t|
    t.integer  "rate",       default: 10,         null: false
    t.datetime "begin_time",                      null: false
    t.datetime "end_time",                        null: false
    t.string   "status",     default: "inactive"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inventory_records", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "count",                               default: 0,   null: false
    t.string   "action",                                            null: false
    t.decimal  "price",      precision: 16, scale: 4, default: 0.0, null: false
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "accout_id"
    t.string   "note"
    t.string   "status",     default: "active", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], name: "index_roles_on_name"

  create_table "sessions", force: :cascade do |t|
    t.string   "session_id", null: false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], name: "index_sessions_on_session_id", unique: true
  add_index "sessions", ["updated_at"], name: "index_sessions_on_updated_at"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"

end
