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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110407111832) do

  create_table "acs", :force => true do |t|
    t.string   "ac_type"
    t.string   "phase"
    t.integer  "input_voltage"
    t.date     "installed_date"
    t.string   "installed_team"
    t.string   "compressor_type"
    t.string   "gas_type"
    t.text     "comments"
    t.integer  "station_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "batteries", :force => true do |t|
    t.string   "model_no"
    t.string   "capacity"
    t.integer  "cells_no"
    t.integer  "banks_no"
    t.date     "installed_date"
    t.string   "installation_team"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "station_id"
  end

  create_table "fault_histories", :force => true do |t|
    t.string   "problem"
    t.string   "alarm"
    t.text     "comments"
    t.date     "fault_history_date"
    t.integer  "ac_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "generators", :force => true do |t|
    t.string   "genset_name"
    t.string   "model_no"
    t.string   "alternator_no"
    t.string   "engine_no"
    t.string   "capacity"
    t.date     "installed_date"
    t.string   "installation_team"
    t.text     "comment"
    t.integer  "station_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rectifiers", :force => true do |t|
    t.string   "model_no"
    t.string   "capacity"
    t.integer  "modules_no"
    t.string   "module_capacity"
    t.date     "installed_date"
    t.string   "installation_team"
    t.integer  "input_ac_voltage"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "station_id"
  end

  create_table "servicing_histories", :force => true do |t|
    t.datetime "servicing_date"
    t.string   "hour_meter_reading"
    t.string   "servicing_type"
    t.string   "changed_part_no"
    t.integer  "changed_part_quantity"
    t.text     "description"
    t.integer  "generator_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stations", :force => true do |t|
    t.string   "name"
    t.string   "zone"
    t.string   "district"
    t.string   "account_office"
    t.string   "maintenance_office"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ups", :force => true do |t|
    t.string   "model_no"
    t.string   "capacity"
    t.date     "installed_date"
    t.string   "installation_team"
    t.integer  "input_ac_voltage"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "station_id"
  end

end
