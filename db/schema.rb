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

ActiveRecord::Schema.define(version: 20161001043613) do

  create_table "admins", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
    t.string   "salt"
  end

  create_table "categories", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category"
  end

  create_table "employers", force: true do |t|
    t.string   "emp_name"
    t.string   "contact_person"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
    t.string   "salt"
  end

  create_table "jobapplications", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "job_ID"
    t.string   "emp_name"
    t.string   "email"
    t.string   "status"
    t.string   "tags"
  end

  create_table "jobs", force: true do |t|
    t.string   "job_ID"
    t.string   "emp_name"
    t.string   "title"
    t.text     "description"
    t.string   "tags"
    t.date     "deadline"
    t.string   "category"
    t.string   "public"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
    t.string   "salt"
    t.string   "phone_no"
    t.string   "skills"
    t.text     "resume"
    t.text     "coverLetter"
  end

end
