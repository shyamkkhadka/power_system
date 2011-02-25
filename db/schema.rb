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

ActiveRecord::Schema.define(:version => 20110225101612) do

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
  end

end
