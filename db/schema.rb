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

ActiveRecord::Schema[7.1].define(version: 2024_08_14_144411) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.string "data"
    t.string "lenght"
    t.integer "price"
    t.bigint "tattoueur_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tattoueur_id"], name: "index_appointments_on_tattoueur_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "firstame"
    t.string "lasname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flashes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "tattoueur_id"
    t.index ["tattoueur_id"], name: "index_flashes_on_tattoueur_id"
  end

  create_table "tattoos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "tattoueur_id"
    t.index ["tattoueur_id"], name: "index_tattoos_on_tattoueur_id"
  end

  create_table "tattoueurs", force: :cascade do |t|
    t.string "fistname"
    t.string "Lastname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "appointments", "tattoueurs"
  add_foreign_key "flashes", "tattoueurs"
  add_foreign_key "tattoos", "tattoueurs"
end
