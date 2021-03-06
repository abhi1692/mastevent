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

ActiveRecord::Schema.define(version: 20141022141423) do

  create_table "applicants", force: true do |t|
    t.integer  "user_id",    null: false
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "event_name",           limit: 100
    t.integer  "user_id",                                                   default: 0,    null: false
    t.date     "event_start_date"
    t.integer  "coordinator_required"
    t.decimal  "pay_per_day",                      precision: 15, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "location"
    t.text     "description"
    t.string   "time"
    t.boolean  "status",                                                    default: true
    t.integer  "number_of_days"
    t.string   "address"
    t.integer  "bike"
    t.integer  "volunteer_type"
  end

  create_table "user_event_infos", force: true do |t|
    t.string   "address",            limit: 100
    t.string   "event_exprience",    limit: 100
    t.string   "preferred_location", limit: 100
    t.string   "suitable_day",       limit: 100
    t.boolean  "bike"
    t.string   "qualification",      limit: 100
    t.datetime "created_at"
    t.datetime "updated_at"
    t.time     "suitable_time_from"
    t.time     "suitable_time_to"
    t.string   "phone_no"
    t.string   "email"
    t.string   "name"
    t.text     "more_details"
    t.integer  "event_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",                   limit: 50
    t.string   "mobile_number",           limit: 15
    t.string   "firstname",               limit: 20
    t.string   "lastname",                limit: 20
    t.string   "username",                                       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password",                limit: 20
    t.string   "date_of_birth",           limit: 20
    t.string   "address",                 limit: 50
    t.string   "postal_code",             limit: 7
    t.integer  "user_type",               limit: 1,  default: 0, null: false
    t.string   "city"
    t.string   "nationality"
    t.string   "language"
    t.string   "gender"
    t.integer  "qualification",                      default: 0, null: false
    t.integer  "bike",                               default: 0, null: false
    t.string   "preferred_location"
    t.string   "alternate_mobile_number", limit: 15
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
