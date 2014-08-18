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

ActiveRecord::Schema.define(version: 20140818115118) do

  create_table "events", force: true do |t|
    t.string   "event_name",           limit: 100
    t.string   "date_of_event",        limit: 15
    t.integer  "coordinator_required"
    t.string   "pay_per_day",          limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  create_table "users", force: true do |t|
    t.string   "email",         limit: 50
    t.string   "mobile_number", limit: 11
    t.string   "firstname",     limit: 20
    t.string   "lastname",      limit: 20
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password",      limit: 20
    t.string   "date_of_birth", limit: 20
    t.string   "address",       limit: 50
    t.string   "postal_code",   limit: 7
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
