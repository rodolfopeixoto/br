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

ActiveRecord::Schema.define(version: 20170303023810) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "archetypes", force: :cascade do |t|
    t.string "name"
  end

  create_table "comforts", force: :cascade do |t|
    t.boolean "kitchen"
    t.boolean "tv"
    t.boolean "air_conditioning"
    t.boolean "washing_machine"
    t.boolean "dryer"
    t.boolean "garage"
    t.boolean "cabo_tv"
    t.boolean "pet"
    t.boolean "smoke"
    t.boolean "accessibility"
    t.boolean "elevator"
    t.boolean "intercom"
    t.boolean "concierge"
    t.boolean "pool"
    t.boolean "service_area"
    t.boolean "gym"
    t.boolean "electric_iron"
    t.boolean "notebook_space"
    t.boolean "private_entrance"
  end

  create_table "properties", force: :cascade do |t|
    t.string   "title"
    t.integer  "accommodates"
    t.integer  "bathrooms"
    t.integer  "number_of_rooms"
    t.boolean  "furnished"
    t.boolean  "single_room"
    t.boolean  "share_room"
    t.float    "price"
    t.text     "description"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "archetype_id"
    t.integer  "rule_id"
    t.integer  "comfort_id"
    t.index ["archetype_id"], name: "index_properties_on_archetype_id", using: :btree
    t.index ["comfort_id"], name: "index_properties_on_comfort_id", using: :btree
    t.index ["rule_id"], name: "index_properties_on_rule_id", using: :btree
  end

  create_table "rules", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "properties", "archetypes"
  add_foreign_key "properties", "comforts"
  add_foreign_key "properties", "rules"
end
