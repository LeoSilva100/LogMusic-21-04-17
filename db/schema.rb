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

ActiveRecord::Schema.define(version: 20170411161500) do

  create_table "abouts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "description", limit: 65535
    t.string   "band"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "register_id"
    t.index ["register_id"], name: "index_abouts_on_register_id", using: :btree
  end

  create_table "contacts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "phone"
    t.string   "facebook"
    t.string   "instagram"
    t.string   "twitter"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "register_id"
    t.index ["register_id"], name: "index_contacts_on_register_id", using: :btree
  end

  create_table "inboxes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "content",       limit: 65535
    t.boolean  "visualization"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "register_id"
    t.integer  "login_id"
    t.index ["login_id"], name: "index_inboxes_on_login_id", using: :btree
    t.index ["register_id"], name: "index_inboxes_on_register_id", using: :btree
  end

  create_table "logins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_logins_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_logins_on_reset_password_token", unique: true, using: :btree
  end

  create_table "registers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "instrument"
    t.string   "stylo"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "login_id"
    t.index ["login_id"], name: "index_registers_on_login_id", using: :btree
  end

  add_foreign_key "abouts", "registers"
  add_foreign_key "contacts", "registers"
  add_foreign_key "inboxes", "logins"
  add_foreign_key "inboxes", "registers"
  add_foreign_key "registers", "logins"
end
