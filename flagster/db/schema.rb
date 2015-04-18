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

ActiveRecord::Schema.define(version: 20150418222623) do

  create_table "flags", force: :cascade do |t|
    t.integer  "bars"
    t.integer  "stripes"
    t.integer  "colours"
    t.boolean  "red"
    t.boolean  "green"
    t.boolean  "blue"
    t.boolean  "gold"
    t.boolean  "white"
    t.boolean  "black"
    t.boolean  "orange"
    t.string   "mainhue"
    t.integer  "circles"
    t.integer  "sunstars"
    t.integer  "crescent"
    t.boolean  "triangle"
    t.boolean  "icon"
    t.boolean  "animate"
    t.boolean  "text"
    t.string   "topleft"
    t.string   "botright"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
  end

  add_index "flags", ["name"], name: "index_flags_on_name"

end
