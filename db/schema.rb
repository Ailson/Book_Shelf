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

<<<<<<< HEAD
ActiveRecord::Schema.define(:version => 20120814180031) do
=======
ActiveRecord::Schema.define(:version => 20120902002957) do
>>>>>>> ed50c4c524b2a5a0a3b9250bc12c3db73e5a34b0

  create_table "books", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "picture"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.boolean  "borrowed",         :default => false, :null => false
    t.date     "date_borrowed"
    t.integer  "user_id"
    t.integer  "borrowed_to_user"
<<<<<<< HEAD
=======
    t.integer  "friend_id"
  end

  create_table "friends", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "email"
    t.integer  "facebook_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
>>>>>>> ed50c4c524b2a5a0a3b9250bc12c3db73e5a34b0
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "tel"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
