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

ActiveRecord::Schema.define(:version => 20120521172057) do

  create_table "clients", :force => true do |t|
    t.string   "company_name"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "phone"
    t.string   "fax"
    t.boolean  "PO_required"
    t.date     "archive_date"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "contacts", :force => true do |t|
    t.integer  "company_id"
    t.boolean  "is_primary"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "title"
    t.string   "email"
    t.string   "cell_phone"
    t.string   "business_phone"
    t.date     "archive_date"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "observations", :force => true do |t|
    t.decimal  "def_fee",      :precision => 8, :scale => 2
    t.string   "title"
    t.date     "archive_date"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  create_table "projects", :force => true do |t|
    t.integer  "client_id"
    t.integer  "project_number"
    t.integer  "primary_contact_id"
    t.integer  "billing_contact_id"
    t.integer  "letter_contact_id"
    t.boolean  "PO_per_project"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "subdivision"
    t.integer  "lot"
    t.integer  "block"
    t.integer  "filing"
    t.integer  "building"
    t.integer  "unit"
    t.date     "archive_date"
    t.text     "description"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "red_flags", :force => true do |t|
    t.integer  "client_id"
    t.integer  "project_id"
    t.text     "description", :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "title"
    t.string   "certification"
    t.string   "phone"
    t.date     "archive_date"
    t.string   "login",                              :null => false
    t.string   "email",                              :null => false
    t.string   "crypted_password",                   :null => false
    t.string   "password_salt",                      :null => false
    t.string   "persistence_token",                  :null => false
    t.string   "single_access_token",                :null => false
    t.string   "perishable_token",                   :null => false
    t.integer  "login_count",         :default => 0, :null => false
    t.integer  "failed_login_count",  :default => 0, :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

end
