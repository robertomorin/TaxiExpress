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

<<<<<<< HEAD
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20150930063701) do
=======
ActiveRecord::Schema.define(version: 20150930071512) do
>>>>>>> e456a17d3e8c8f891610841e161ec5514fc2daa2
=======
ActiveRecord::Schema.define(version: 20150930080044) do
>>>>>>> 299f7f4611f67922114fbe475f75e1fd538019c5

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

<<<<<<< HEAD
  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "lastname",   limit: 255
    t.string   "mail",       limit: 255
    t.string   "password",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
=======
  create_table "paymenttypes", force: :cascade do |t|
    t.text     "name",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
>>>>>>> e456a17d3e8c8f891610841e161ec5514fc2daa2
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

<<<<<<< HEAD
=======
  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "lastname",   limit: 255
    t.string   "mail",       limit: 255
    t.string   "password",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "trademark",    limit: 255
    t.string   "model",        limit: 255
    t.integer  "creationyear", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

>>>>>>> e456a17d3e8c8f891610841e161ec5514fc2daa2
  add_foreign_key "drivers", "vehicles"
  add_foreign_key "feedbacks", "reservations"
  add_foreign_key "reservations", "operators"
  add_foreign_key "reservations", "paymenttypes"
  add_foreign_key "reservations", "statuses"
  add_foreign_key "reservations", "users"
  add_foreign_key "reservations", "vehicles"
end
