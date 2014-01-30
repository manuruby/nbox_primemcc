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

ActiveRecord::Schema.define(version: 20131015000744) do

  create_table "enterprises", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.string   "client"
    t.integer  "enterprise_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects", ["enterprise_id"], name: "index_projects_on_enterprise_id"

  create_table "subsystems", force: true do |t|
    t.string   "code"
    t.string   "title"
    t.integer  "system_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subsystems", ["system_id"], name: "index_subsystems_on_system_id"

  create_table "systems", force: true do |t|
    t.string   "code"
    t.string   "title"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "systems", ["project_id"], name: "index_systems_on_project_id"

end
