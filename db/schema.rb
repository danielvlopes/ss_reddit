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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20150210201912) do

  create_table "comments", force: :cascade do |t|
    t.string   "permalink"
    t.text     "text"
    t.integer  "user_id"
    t.integer  "votable_id"
    t.string   "votable_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "comments", ["votable_type", "votable_id"], name: "index_comments_on_votable_type_and_votable_id"

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "url"
    t.text     "text"
    t.string   "thumbnail_url"
    t.integer  "user_id"
    t.integer  "votable_id"
    t.string   "votable_type"
=======
ActiveRecord::Schema.define(version: 20150210205015) do

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "thumbnail_url"
    t.integer  "user_id"
>>>>>>> 690a82d0333f0ef4ac3b1a47a9ea5fa6686cdd01
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

<<<<<<< HEAD
  add_index "posts", ["votable_type", "votable_id"], name: "index_posts_on_votable_type_and_votable_id"

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password"
=======
  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",      null: false
>>>>>>> 690a82d0333f0ef4ac3b1a47a9ea5fa6686cdd01
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "votes", force: :cascade do |t|
<<<<<<< HEAD
    t.integer  "user_id"
    t.integer  "votable_id"
    t.string   "votable_type"
=======
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "user_id"
>>>>>>> 690a82d0333f0ef4ac3b1a47a9ea5fa6686cdd01
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

<<<<<<< HEAD
=======
  add_index "votes", ["user_id"], name: "index_votes_on_user_id"
>>>>>>> 690a82d0333f0ef4ac3b1a47a9ea5fa6686cdd01
  add_index "votes", ["votable_type", "votable_id"], name: "index_votes_on_votable_type_and_votable_id"

end
