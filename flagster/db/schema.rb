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

ActiveRecord::Schema.define(version: 20150420032455) do

  create_table "flags", force: :cascade do |t|
    t.integer  "bars"
    t.integer  "stripes"
    t.integer  "colours"
    t.string   "mainhue"
    t.integer  "circles"
    t.integer  "sunstars"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "name"
    t.string   "landmass"
    t.string   "zone"
    t.integer  "area"
    t.integer  "population"
    t.string   "language"
    t.string   "religion"
    t.integer  "crosses"
    t.integer  "saltires"
    t.integer  "quarters"
    t.integer  "red"
    t.integer  "green"
    t.integer  "blue"
    t.integer  "gold"
    t.integer  "white"
    t.integer  "black"
    t.integer  "orange"
    t.integer  "crescent"
    t.integer  "triangle"
    t.integer  "icon"
    t.integer  "animate"
    t.integer  "text"
    t.integer  "topleft"
    t.integer  "botright"
    t.string   "iso",        limit: 5
  end

  add_index "flags", ["name"], name: "index_flags_on_name"

end
