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

ActiveRecord::Schema.define(:version => 20141122161449) do

  create_table "exercises", :force => true do |t|
    t.string "name"
    t.text   "description"
    t.time   "defaultTime"
    t.string "image"
  end

  create_table "exercises_workouts", :force => true do |t|
    t.integer "exercise_id"
    t.integer "workout_id"
  end

  create_table "profiles", :force => true do |t|
    t.string  "email"
    t.string  "password"
    t.string  "name"
    t.integer "weight"
    t.integer "height"
  end

  create_table "workouts", :force => true do |t|
    t.string  "name"
    t.integer "profile_id"
  end

end
