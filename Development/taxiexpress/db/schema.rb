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

ActiveRecord::Schema.define(version: 20151005014534) do

  create_table "drivers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "lastname",   limit: 255
    t.string   "email",      limit: 255
    t.string   "password",   limit: 255
    t.integer  "vehicle_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "drivers", ["vehicle_id"], name: "index_drivers_on_vehicle_id", using: :btree

  create_table "feedbacks", force: :cascade do |t|
    t.text     "observation",    limit: 65535
    t.datetime "datecreated"
    t.integer  "reservation_id", limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "feedbacks", ["reservation_id"], name: "index_feedbacks_on_reservation_id", using: :btree

  create_table "operators", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "lastname",   limit: 255
    t.string   "mail",       limit: 255
    t.string   "password",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "paymenttypes", force: :cascade do |t|
    t.text     "name",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "passengersquantity", limit: 4
    t.text     "vehicletype",        limit: 65535
    t.text     "originaddress",      limit: 65535
    t.text     "destinationaddress", limit: 65535
    t.decimal  "price",                            precision: 10
    t.datetime "date"
    t.integer  "vehicle_id",         limit: 4
    t.integer  "user_id",            limit: 4
    t.integer  "operator_id",        limit: 4
    t.integer  "status_id",          limit: 4
    t.integer  "paymenttype_id",     limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "reservations", ["operator_id"], name: "index_reservations_on_operator_id", using: :btree
  add_index "reservations", ["paymenttype_id"], name: "index_reservations_on_paymenttype_id", using: :btree
  add_index "reservations", ["status_id"], name: "index_reservations_on_status_id", using: :btree
  add_index "reservations", ["user_id"], name: "index_reservations_on_user_id", using: :btree
  add_index "reservations", ["vehicle_id"], name: "index_reservations_on_vehicle_id", using: :btree

  create_table "statuses", force: :cascade do |t|
    t.text     "name",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                   limit: 255
    t.text     "lastname",               limit: 65535
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vehicles", force: :cascade do |t|
    t.string   "trademark",    limit: 255
    t.string   "model",        limit: 255
    t.integer  "creationyear", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_foreign_key "drivers", "vehicles"
  add_foreign_key "feedbacks", "reservations"
  add_foreign_key "reservations", "vehicles"
end
