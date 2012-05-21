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

ActiveRecord::Schema.define(:version => 20120521180604) do

  create_table "assignments", :force => true do |t|
    t.integer  "user_id",                           :null => false
    t.integer  "project_id",                        :null => false
    t.integer  "observation_id",                    :null => false
    t.boolean  "archived",       :default => false
    t.date     "archive_date"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "clients", :force => true do |t|
<<<<<<< HEAD
    t.string   "company_name",                    :null => false
    t.string   "address1",                        :null => false
    t.string   "address2"
    t.string   "city",                            :null => false
    t.string   "state",                           :null => false
    t.string   "zipcode",                         :null => false
    t.string   "phone"
    t.string   "fax"
    t.boolean  "PO_required",  :default => true
    t.boolean  "archived",     :default => false
    t.date     "archive_date"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
=======
    t.string   "company_name",                   :null => false
    t.string   "address1",                       :null => false
    t.string   "address2"
    t.string   "city",                           :null => false
    t.string   "state",                          :null => false
    t.string   "zipcode",                        :null => false
    t.string   "phone"
    t.string   "fax"
    t.boolean  "PO_required",  :default => true
    t.date     "archive_date"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
>>>>>>> b498ced3742517bbe0e1775f82d70b92680a61cf
  end

  create_table "contacts", :force => true do |t|
    t.integer  "company_id",                        :null => false
    t.boolean  "is_primary",     :default => false
    t.string   "first_name",                        :null => false
    t.string   "middle_name"
    t.string   "last_name",                         :null => false
    t.string   "title"
    t.string   "email",                             :null => false
    t.string   "cell_phone"
    t.string   "business_phone"
    t.boolean  "archived",       :default => false
    t.date     "archive_date"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "observations", :force => true do |t|
<<<<<<< HEAD
    t.decimal  "def_fee",      :precision => 8, :scale => 2,                    :null => false
    t.string   "title",                                                         :null => false
    t.boolean  "archived",                                   :default => false
=======
    t.decimal  "def_fee",      :precision => 8, :scale => 2, :null => false
    t.string   "title",                                      :null => false
>>>>>>> b498ced3742517bbe0e1775f82d70b92680a61cf
    t.date     "archive_date"
    t.datetime "created_at",                                                    :null => false
    t.datetime "updated_at",                                                    :null => false
  end

  create_table "projects", :force => true do |t|
<<<<<<< HEAD
    t.integer  "client_id",                             :null => false
    t.integer  "project_number",                        :null => false
    t.integer  "primary_contact_id",                    :null => false
=======
    t.integer  "client_id",          :null => false
    t.integer  "project_number",     :null => false
    t.integer  "primary_contact_id", :null => false
>>>>>>> b498ced3742517bbe0e1775f82d70b92680a61cf
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
    t.boolean  "archived",           :default => false
    t.date     "archive_date"
    t.text     "description"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  create_table "red_flags", :force => true do |t|
    t.integer  "client_id"
    t.integer  "project_id"
    t.text     "description",                     :null => false
    t.boolean  "archived",     :default => false
    t.date     "archive_date"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  create_table "users", :force => true do |t|
<<<<<<< HEAD
    t.string   "first_name",                             :null => false
    t.string   "middle_name"
    t.string   "last_name",                              :null => false
=======
    t.string   "first_name",                         :null => false
    t.string   "middle_name"
    t.string   "last_name",                          :null => false
>>>>>>> b498ced3742517bbe0e1775f82d70b92680a61cf
    t.string   "title"
    t.string   "certification"
    t.string   "phone"
    t.boolean  "archived",            :default => false
    t.date     "archive_date"
    t.string   "login",                                  :null => false
    t.string   "email",                                  :null => false
    t.string   "crypted_password",                       :null => false
    t.string   "password_salt",                          :null => false
    t.string   "persistence_token",                      :null => false
    t.string   "single_access_token",                    :null => false
    t.string   "perishable_token",                       :null => false
    t.integer  "login_count",         :default => 0,     :null => false
    t.integer  "failed_login_count",  :default => 0,     :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

end
