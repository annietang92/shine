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

ActiveRecord::Schema.define(version: 20140424172619) do

  create_table "announcements", force: true do |t|
    t.string   "date"
    t.string   "title"
    t.string   "text"
    t.string   "link1"
    t.string   "link2"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "link1_title"
    t.string   "link2_title"
  end

  create_table "donations", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "donation"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "read"
    t.string   "recurring"
  end

  create_table "mentor_applications", force: true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.text     "interest_shine"
    t.string   "interest_role"
    t.integer  "hours"
    t.string   "interview"
    t.string   "free_wednesday"
    t.string   "free_thurs"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "phone"
    t.string   "email"
    t.string   "read"
  end

  create_table "messages", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "subject"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "read"
  end

  create_table "student_applications", force: true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "phone"
    t.string   "email"
    t.string   "school"
    t.string   "math_teacher"
    t.string   "math_teacher_phone"
    t.string   "math_teacher_email"
    t.string   "parent"
    t.string   "parent_number"
    t.string   "parent_email"
    t.text     "why"
    t.text     "grades"
    t.text     "dance_experience"
    t.text     "extracurricular"
    t.string   "favorite_subject"
    t.string   "least_favorite_subject"
    t.string   "feel"
    t.text     "get_to"
    t.text     "other_applicants"
    t.text     "hear_about"
    t.text     "other"
    t.string   "signature"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "read"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
