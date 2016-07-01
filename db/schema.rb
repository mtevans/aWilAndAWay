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

ActiveRecord::Schema.define(version: 20160630225813) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "occasions", force: :cascade do |t|
    t.integer  "organizer_id", null: false
    t.integer  "venue_id",     null: false
    t.date     "date",         null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "start_time",   null: false
    t.integer  "end_time",     null: false
  end

  add_index "occasions", ["date"], name: "index_occasions_on_date", using: :btree
  add_index "occasions", ["organizer_id"], name: "index_occasions_on_organizer_id", using: :btree
  add_index "occasions", ["venue_id"], name: "index_occasions_on_venue_id", using: :btree

  create_table "subscriptions", force: :cascade do |t|
    t.integer  "volunteer_id", null: false
    t.integer  "occasion_id",  null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "subscriptions", ["volunteer_id", "occasion_id"], name: "index_subscriptions_on_volunteer_id_and_occasion_id", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.string   "session_token",   null: false
    t.string   "name",            null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  create_table "venues", force: :cascade do |t|
    t.string   "title",                                                                                                        null: false
    t.string   "about",                                                                                                        null: false
    t.text     "description",                                                                                                  null: false
    t.string   "address",                                                                                                      null: false
    t.string   "zip_code",                                                                                                     null: false
    t.string   "email",                                                                                                        null: false
    t.string   "url",          default: "http://res.cloudinary.com/dfld7chk4/image/upload/v1467237098/defualt_pic_st9qj2.jpg", null: false
    t.integer  "organizer_id",                                                                                                 null: false
    t.datetime "created_at",                                                                                                   null: false
    t.datetime "updated_at",                                                                                                   null: false
  end

  add_index "venues", ["about"], name: "index_venues_on_about", using: :btree
  add_index "venues", ["description"], name: "index_venues_on_description", using: :btree
  add_index "venues", ["title"], name: "index_venues_on_title", using: :btree

end
