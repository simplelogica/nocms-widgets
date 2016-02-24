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

ActiveRecord::Schema.define(version: 20160224115811) do

  create_table "no_cms_blocks_block_slots", force: true do |t|
    t.integer  "container_id"
    t.string   "container_type"
    t.integer  "block_id"
    t.integer  "position",       default: 0
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.string   "template_zone"
  end

  add_index "no_cms_blocks_block_slots", ["block_id"], name: "index_no_cms_blocks_block_slots_on_block_id"
  add_index "no_cms_blocks_block_slots", ["container_id", "container_type"], name: "index_no_cms_blocks_block_slots_on_container_type_and_id"
  add_index "no_cms_blocks_block_slots", ["parent_id"], name: "index_no_cms_blocks_block_slots_on_parent_id"

  create_table "no_cms_blocks_block_translations", force: true do |t|
    t.integer "no_cms_blocks_block_id"
    t.string  "locale"
    t.text    "fields_info",            limit: 4294967295
    t.boolean "draft"
  end

  add_index "no_cms_blocks_block_translations", ["no_cms_blocks_block_id"], name: "no_cms_blocks_blocks_translations_block_id"

  create_table "no_cms_blocks_blocks", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.integer  "position"
    t.text     "fields_info"
    t.string   "layout"
    t.string   "template_zone"
  end

  create_table "no_cms_blocks_blocks_widgets_widgets", id: false, force: true do |t|
    t.integer "no_cms_widgets_widget_id", null: false
    t.integer "no_cms_blocks_block_id",   null: false
  end

  add_index "no_cms_blocks_blocks_widgets_widgets", ["no_cms_blocks_block_id"], name: "no_cms_widgets_blocks_block"
  add_index "no_cms_blocks_blocks_widgets_widgets", ["no_cms_widgets_widget_id"], name: "no_cms_widgets_blocks_widget"

  create_table "no_cms_widgets_widgets", force: true do |t|
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
