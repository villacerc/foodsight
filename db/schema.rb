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

ActiveRecord::Schema.define(version: 20170706234913) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "replies", force: :cascade do |t|
    t.string "body"
    t.bigint "user_id"
    t.bigint "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_replies_on_subject_id"
    t.index ["user_id"], name: "index_replies_on_user_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.bigint "user_id"
    t.bigint "topic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["topic_id"], name: "index_subjects_on_topic_id"
    t.index ["user_id"], name: "index_subjects_on_user_id"
  end

  create_table "topics", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_ingredient", default: true
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "replies", "subjects"
  add_foreign_key "replies", "users"
  add_foreign_key "subjects", "topics"
  add_foreign_key "subjects", "users"
end
