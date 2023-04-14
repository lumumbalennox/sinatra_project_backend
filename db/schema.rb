# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_03_30_050946) do

  create_table "constraints", force: :cascade do |t|
    t.string "how_many_children_do_you_have"
    t.string "how_many_in_secondary"
    t.string "how_many_in_post_secondary"
    t.integer "parents_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parents", force: :cascade do |t|
    t.string "father_name"
    t.string "mother_name"
    t.string "is_father_alive"
    t.string "is_mother_alive"
    t.string "guardian_name"
    t.integer "contact"
    t.string "disability"
    t.string "if_yes_disability_nature"
    t.string "is_from_poor_household"
    t.string "who_has_been_paying_your_fee"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", force: :cascade do |t|
    t.string "form"
    t.string "stream"
    t.string "term"
    t.string "last_term_position"
    t.string "principal"
    t.string "contact"
    t.integer "students_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "siblings", force: :cascade do |t|
    t.string "name"
    t.string "relationship"
    t.string "school"
    t.string "form_class"
    t.integer "total_fee"
    t.integer "outstanding_balance"
    t.integer "students_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: :cascade do |t|
    t.integer "adm"
    t.string "fname"
    t.string "mname"
    t.string "lname"
    t.datetime "dob"
    t.string "district"
    t.string "division"
    t.string "location"
    t.string "sublocation"
    t.string "village"
    t.string "ward"
    t.string "ever_received_NGCDF"
    t.integer "how_much"
    t.datetime "year_"
    t.string "any_other_bursary"
    t.datetime "year_received"
    t.integer "amount"
    t.integer "parents_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "school_id"
  end

end
