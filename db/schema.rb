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

ActiveRecord::Schema.define(version: 20170501185814) do

  create_table "addresses", force: :cascade do |t|
    t.string   "city"
    t.string   "state"
    t.string   "colony"
    t.integer  "number"
    t.integer  "insideNumber"
    t.integer  "zipCode"
    t.integer  "idProperty_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["idProperty_id"], name: "index_addresses_on_idProperty_id"
  end

  create_table "lessors", force: :cascade do |t|
    t.string   "name"
    t.string   "lastName"
    t.text     "telephone"
    t.text     "cellphone"
    t.text     "email"
    t.text     "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "properties", force: :cascade do |t|
    t.integer  "numberPersons"
    t.integer  "cost"
    t.string   "body"
    t.string   "type"
    t.integer  "idLessor_id"
    t.integer  "idTenant_id"
    t.integer  "idAddress_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["idAddress_id"], name: "index_properties_on_idAddress_id"
    t.index ["idLessor_id"], name: "index_properties_on_idLessor_id"
    t.index ["idTenant_id"], name: "index_properties_on_idTenant_id"
  end

  create_table "tenants", force: :cascade do |t|
    t.string   "name"
    t.string   "lastName"
    t.date     "dateOfBirth"
    t.text     "telephone"
    t.text     "cellphone"
    t.string   "gender"
    t.text     "email"
    t.text     "password"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
