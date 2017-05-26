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

ActiveRecord::Schema.define(version: 20170526013001) do

  create_table "descriptions", force: :cascade do |t|
    t.string   "type"
    t.string   "kind"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "description"
  end

  create_table "items", force: :cascade do |t|
    t.string   "title"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items_descriptions", id: false, force: :cascade do |t|
    t.integer "item_id"
    t.integer "description_id"
  end

  add_index "items_descriptions", ["description_id"], name: "index_items_descriptions_on_description_id"
  add_index "items_descriptions", ["item_id"], name: "index_items_descriptions_on_item_id"

end
