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

ActiveRecord::Schema.define(version: 2021_03_19_032721) do

  create_table "conferences", force: :cascade do |t|
    t.string "conference_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "divisions", force: :cascade do |t|
    t.integer "conference_id", null: false
    t.integer "zone_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["conference_id"], name: "index_divisions_on_conference_id"
    t.index ["zone_id"], name: "index_divisions_on_zone_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "code"
    t.string "city"
    t.string "full_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "division_id", null: false
    t.index ["division_id"], name: "index_teams_on_division_id"
  end

  create_table "zones", force: :cascade do |t|
    t.string "zone_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "divisions", "conferences"
  add_foreign_key "divisions", "zones"
  add_foreign_key "teams", "divisions"
end
