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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130531052222) do

  create_table "music_styles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "musical_groups", :force => true do |t|
    t.string   "name"
    t.integer  "music_style_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "musical_groups", ["music_style_id"], :name => "index_musical_groups_on_music_style_id"

  create_table "user_musical_groups", :force => true do |t|
    t.integer  "user_id"
    t.integer  "musical_group_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
