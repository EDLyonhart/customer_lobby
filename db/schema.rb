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

ActiveRecord::Schema.define(version: 20170703174900) do

  create_table "companies", force: :cascade do |t|
    t.string   "company_name"
    t.string   "company_address1"
    t.string   "company_address2"
    t.string   "company_state"
    t.integer  "company_zip"
    t.integer  "company_phone"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "customer_companies", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "company_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["company_id"], name: "index_customer_companies_on_company_id"
    t.index ["customer_id"], name: "index_customer_companies_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string   "customer_name"
    t.string   "customer_address1"
    t.string   "customer_address2"
    t.string   "customer_state"
    t.integer  "customer_zip"
    t.integer  "customer_phone"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "companies"
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "review_body"
    t.integer  "review_rating"
    t.integer  "company_id"
    t.integer  "customer_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["company_id"], name: "index_reviews_on_company_id"
    t.index ["customer_id"], name: "index_reviews_on_customer_id"
  end

end
