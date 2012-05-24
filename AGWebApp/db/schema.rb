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

ActiveRecord::Schema.define(:version => 20120523204504) do

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
    t.string   "company_name",                    :null => false
    t.string   "address1",                        :null => false
    t.string   "address2"
    t.string   "city",                            :null => false
    t.string   "state",                           :null => false
    t.string   "zipcode",                         :null => false
    t.string   "phone"
    t.string   "fax"
    t.boolean  "PO_required",                     :null => false
    t.boolean  "archived",     :default => false
    t.date     "archive_date"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
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
    t.decimal  "def_fee",      :precision => 8, :scale => 2,                    :null => false
    t.string   "title",                                                         :null => false
    t.boolean  "archived",                                   :default => false
    t.date     "archive_date"
    t.datetime "created_at",                                                    :null => false
    t.datetime "updated_at",                                                    :null => false
  end

  create_table "projects", :force => true do |t|
    t.integer  "client_id",                             :null => false
    t.integer  "project_number",                        :null => false
    t.integer  "primary_contact_id",                    :null => false
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
    t.text     "description"
    t.boolean  "archived",           :default => false
    t.date     "archive_date"
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

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "users", :force => true do |t|
    t.string   "email",                                :default => "", :null => false
    t.string   "encrypted_password",                   :default => ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                        :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                           :null => false
    t.datetime "updated_at",                                           :null => false
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "invitation_token",       :limit => 60
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["invitation_token"], :name => "index_users_on_invitation_token"
  add_index "users", ["invited_by_id"], :name => "index_users_on_invited_by_id"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
