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

ActiveRecord::Schema.define(version: 20141209172645) do

  create_table "no_cms_blocks_block_translations", force: true do |t|
    t.integer "no_cms_blocks_block_id"
    t.string  "locale"
    t.string  "layout"
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
  end

  create_table "no_cms_blocks_blocks_no_cms_widgets_widgets", id: false, force: true do |t|
    t.integer "no_cms_widgets_widget_id", null: false
    t.integer "no_cms_blocks_block_id",   null: false
  end

  add_index "no_cms_blocks_blocks_no_cms_widgets_widgets", ["no_cms_blocks_block_id"], name: "no_cms_widgets_blocks_block"
  add_index "no_cms_blocks_blocks_no_cms_widgets_widgets", ["no_cms_widgets_widget_id"], name: "no_cms_widgets_blocks_widget"

  create_table "no_cms_widgets_widgets", force: true do |t|
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
