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

ActiveRecord::Schema.define(version: 20170614201852) do

  create_table "clinics", force: :cascade do |t|
    t.string "clinic_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pet_owners", force: :cascade do |t|
    t.string "name"
    t.integer "veterinarians_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["veterinarians_id"], name: "index_pet_owners_on_veterinarians_id"
  end

  create_table "veterinarians", force: :cascade do |t|
    t.string "name"
    t.integer "clinic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_veterinarians_on_clinic_id"
  end

end
