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

ActiveRecord::Schema.define(version: 20161201213948) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.text     "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "actions_bills", id: false, force: :cascade do |t|
    t.integer  "bill_id",    null: false
    t.integer  "action_id",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "actions_bills", ["bill_id", "action_id"], name: "index_actions_bills_on_bill_id_and_action_id", using: :btree

  create_table "bills", force: :cascade do |t|
    t.text     "title",       null: false
    t.text     "description", null: false
    t.string   "state",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bills_categories", id: false, force: :cascade do |t|
    t.integer  "bill_id",     null: false
    t.integer  "category_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bills_categories", ["bill_id", "category_id"], name: "index_bills_categories_on_bill_id_and_category_id", using: :btree

  create_table "bills_sponsors", id: false, force: :cascade do |t|
    t.integer  "bill_id",    null: false
    t.integer  "sponsor_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bills_sponsors", ["bill_id", "sponsor_id"], name: "index_bills_sponsors_on_bill_id_and_sponsor_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.text     "name",       null: false
    t.string   "type",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "party_afflications", force: :cascade do |t|
    t.string   "title",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sponsors", force: :cascade do |t|
    t.string   "first_name",           null: false
    t.string   "last_name",            null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "party_afflication_id"
  end

  add_foreign_key "sponsors", "party_afflications"
end
