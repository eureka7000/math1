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

ActiveRecord::Schema.define(version: 20150412230803) do

  create_table "actual_questions", force: :cascade do |t|
    t.string   "aq_number"
    t.string   "aq_question"
    t.string   "aq_level"
    t.string   "aq_level_name"
    t.string   "aq_level_de1"
    t.string   "aq_level_de2"
    t.string   "aq_explanation_1_1"
    t.string   "aq_explanation_1_2"
    t.string   "aq_explanation_1_3"
    t.string   "aq_explanation_1_4"
    t.string   "aq_explanation_1_5"
    t.string   "aq_explanation_2_1"
    t.string   "aq_explanation_2_2"
    t.string   "aq_explanation_2_3"
    t.string   "aq_explanation_2_4"
    t.string   "aq_explanation_2_5"
    t.string   "aq_explanation_3_1"
    t.string   "aq_explanation_3_2"
    t.string   "aq_explanation_3_3"
    t.string   "aq_explanation_3_4"
    t.string   "aq_explanation_3_5"
    t.string   "aq_source_type"
    t.string   "aq_source_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "concept_practices", force: :cascade do |t|
    t.string   "cp_number"
    t.string   "cp_question"
    t.string   "cp_answer"
    t.string   "cp_explanation"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "concept_units", force: :cascade do |t|
    t.string   "cu_number"
    t.string   "cu_title"
    t.text     "cu_description"
    t.string   "cu_level"
    t.string   "cu_concept"
    t.string   "cu_explanation_1"
    t.string   "cu_explanation_2"
    t.string   "cu_reference_1"
    t.string   "cu_reference_2"
    t.string   "exercise_blpr_1"
    t.string   "exercise_blan_1"
    t.string   "exercise_blpr_2"
    t.string   "exercise_blan_2"
    t.string   "exercise_blpr_3"
    t.string   "exercise_blan_3"
    t.string   "exercise_rwpr_1"
    t.string   "exercise_rwan_1"
    t.string   "exercise_rwpr_2"
    t.string   "exercise_rwan_2"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.decimal  "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "type_questions", force: :cascade do |t|
    t.string   "tq_number"
    t.string   "tq_question"
    t.string   "tq_level"
    t.string   "tq_answer"
    t.string   "tq_explanation_1"
    t.string   "tq_explanation_2"
    t.string   "tq_related_concept_1"
    t.string   "tq_related_concept_2"
    t.string   "tq_related_concept_3"
    t.string   "tq_related_concept_4"
    t.string   "tq_type_number"
    t.string   "tq_type_title"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
