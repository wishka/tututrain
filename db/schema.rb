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

ActiveRecord::Schema[7.0].define(version: 2022_08_18_055258) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "routes", force: :cascade do |t|
    t.string "route_name"
    t.string "stations"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "train_id", null: false
    t.index ["train_id"], name: "index_routes_on_train_id"
  end

  create_table "stations", force: :cascade do |t|
    t.string "name"
    t.string "current_trains"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trains", force: :cascade do |t|
    t.string "train_numer"
    t.string "type"
    t.string "route"
    t.string "carriage_list"
    t.integer "carriage_max"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "routes", "trains"
end
