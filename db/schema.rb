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

ActiveRecord::Schema.define(version: 20131212020336) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "town_health_records", force: true do |t|
    t.string   "town_name",               null: false
    t.integer  "population",              null: false
    t.integer  "youth_population"
    t.integer  "senior_population"
    t.integer  "per_capita_income"
    t.integer  "poverty_population"
    t.float    "poverty_percent"
    t.float    "prenatal_percent"
    t.float    "c_section_percent"
    t.integer  "infant_deaths"
    t.float    "infant_mortality"
    t.float    "low_birthweight_percent"
    t.float    "multiple_births_percent"
    t.float    "public_prenatal_percent"
    t.float    "teen_birth_percent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
