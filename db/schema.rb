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

ActiveRecord::Schema.define(version: 20141112080528) do

  create_table "events", force: true do |t|
    t.datetime "scheduled_at"
    t.string   "place"
    t.string   "slug"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["slug"], name: "index_events_on_slug", unique: true, using: :btree

  create_table "images", force: true do |t|
    t.string   "attachment"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "newspapers", force: true do |t|
    t.string   "image"
    t.string   "link"
    t.string   "newspaper_name"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

  add_index "newspapers", ["slug"], name: "index_newspapers_on_slug", unique: true, using: :btree

  create_table "organizations", force: true do |t|
    t.integer  "nb_employees"
    t.string   "address"
    t.string   "ceo_name"
    t.string   "city"
    t.string   "email"
    t.string   "image"
    t.string   "lat"
    t.string   "link"
    t.string   "lon"
    t.string   "name"
    t.string   "phone"
    t.string   "sector"
    t.text     "ceo_bio"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.boolean  "iframe",       default: false
  end

  add_index "organizations", ["slug"], name: "index_organizations_on_slug", unique: true, using: :btree

  create_table "pages", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.string   "info"
  end

  add_index "pages", ["slug"], name: "index_pages_on_slug", unique: true, using: :btree

  create_table "partners", force: true do |t|
    t.string   "image"
    t.string   "link"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

  add_index "partners", ["slug"], name: "index_partners_on_slug", unique: true, using: :btree

  create_table "reports", force: true do |t|
    t.string   "file"
    t.string   "slug"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reports", ["slug"], name: "index_reports_on_slug", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "authentication_token"
    t.string   "email"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["authentication_token"], name: "index_users_on_authentication_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  create_table "works", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.datetime "worked_at"
  end

  add_index "works", ["slug"], name: "index_works_on_slug", unique: true, using: :btree

end
