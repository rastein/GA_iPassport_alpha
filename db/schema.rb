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

ActiveRecord::Schema.define(version: 20160628015704) do

  create_table "passports", force: :cascade do |t|
    t.string   "last_name"
    t.string   "given_name"
    t.string   "passport_number"
    t.date     "date_of_issue"
    t.date     "date_of_expiration"
    t.string   "authority"
    t.string   "type"
    t.string   "place_of_birth"
    t.string   "number_of_visa_pages"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "country_of_issue"
    t.integer  "profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "middle_name"
    t.date     "date_of_birth"
    t.string   "marital_status"
    t.string   "gender"
    t.string   "religion"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "trips", force: :cascade do |t|
    t.string   "trip_name"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "location"
    t.string   "image_url"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visas", force: :cascade do |t|
    t.string   "country"
    t.date     "date_of_issue"
    t.date     "date_of_expiration"
    t.integer  "duration"
    t.string   "visa_type"
    t.integer  "passport_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
