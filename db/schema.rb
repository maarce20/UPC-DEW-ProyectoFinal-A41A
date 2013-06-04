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

ActiveRecord::Schema.define(:version => 20130604205856) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "comments", :force => true do |t|
    t.string   "comment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
    t.integer  "concert_id"
  end

  create_table "concerts", :force => true do |t|
    t.date     "fec_conc"
    t.time     "hora_ini"
    t.time     "hora_fin"
    t.integer  "musical_group_id"
    t.integer  "local_id"
    t.integer  "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "concerts", ["local_id"], :name => "index_concerts_on_local_id"
  add_index "concerts", ["musical_group_id"], :name => "index_concerts_on_musical_group_id"
  add_index "concerts", ["user_id"], :name => "index_concerts_on_user_id"

  create_table "genders", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "locals", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "district"
    t.string   "phone"
    t.float    "longitude"
    t.float    "latitude"
    t.boolean  "gmaps"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

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

  create_table "users", :force => true do |t|
    t.string   "type_person"
    t.string   "name_user"
    t.string   "primary_last_name"
    t.string   "second_last_name"
    t.string   "sex"
    t.string   "type_document"
    t.integer  "number_document"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "email_confirmation"
    t.string   "password_confirmation"
    t.integer  "gender_id"
  end

end
