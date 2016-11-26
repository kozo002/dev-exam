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

ActiveRecord::Schema.define(version: 20161126094346) do

  create_table "near_stations", force: :cascade do |t|
    t.string   "name",           null: false
    t.string   "line_name",      null: false
    t.integer  "take_minutes",   null: false
    t.integer  "real_estate_id", null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.integer  "station_id",     null: false
    t.integer  "real_estate_id", null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "take_minutes"
    t.index ["station_id", "real_estate_id"], name: "index_neighborhoods_on_station_id_and_real_estate_id", unique: true
  end

  create_table "real_estates", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "rent",       null: false
    t.text     "address"
    t.date     "built_at",   null: false
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "line_name",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "line_name"], name: "index_stations_on_name_and_line_name", unique: true
  end

end
