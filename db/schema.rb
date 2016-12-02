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

ActiveRecord::Schema.define(version: 20161201235451) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.text     "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bill_actions", force: :cascade do |t|
    t.integer "bill_id"
    t.integer "action_id"
  end

  add_index "bill_actions", ["action_id"], name: "index_bill_actions_on_action_id", using: :btree
  add_index "bill_actions", ["bill_id"], name: "index_bill_actions_on_bill_id", using: :btree

  create_table "bill_categories", force: :cascade do |t|
    t.integer "bill_id"
    t.integer "category_id"
  end

  add_index "bill_categories", ["bill_id"], name: "index_bill_categories_on_bill_id", using: :btree
  add_index "bill_categories", ["category_id"], name: "index_bill_categories_on_category_id", using: :btree

  create_table "bill_sponsors", force: :cascade do |t|
    t.integer "bill_id"
    t.integer "sponsor_id"
  end

  add_index "bill_sponsors", ["bill_id"], name: "index_bill_sponsors_on_bill_id", using: :btree
  add_index "bill_sponsors", ["sponsor_id"], name: "index_bill_sponsors_on_sponsor_id", using: :btree

  create_table "bills", force: :cascade do |t|
    t.text     "title",       null: false
    t.text     "description", null: false
    t.string   "state",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: :cascade do |t|
    t.text     "name",           null: false
    t.string   "classification", null: false
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

  add_foreign_key "bill_actions", "actions"
  add_foreign_key "bill_actions", "bills"
  add_foreign_key "bill_categories", "bills"
  add_foreign_key "bill_categories", "categories"
  add_foreign_key "bill_sponsors", "bills"
  add_foreign_key "bill_sponsors", "sponsors"
  add_foreign_key "sponsors", "party_afflications"
end
