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

ActiveRecord::Schema[7.0].define(version: 2023_05_10_122511) do
  create_table "reservations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "train_detail_id"
    t.datetime "booking_date", default: "2023-05-05 10:33:00"
    t.integer "pnr"
    t.datetime "journey_date"
    t.integer "traveller"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "amount"
    t.index ["pnr"], name: "index_reservations_on_pnr"
    t.index ["train_detail_id"], name: "index_reservations_on_train_detail_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "user_id"
    t.integer "train_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["train_detail_id"], name: "index_tickets_on_train_detail_id"
    t.index ["user_id"], name: "index_tickets_on_user_id"
  end

  create_table "train_details", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "train_no"
    t.string "name"
    t.integer "frequency"
    t.datetime "departure_time", precision: nil
    t.datetime "arrival_time", precision: nil
    t.integer "distance"
    t.string "source"
    t.string "destination"
    t.integer "fare"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "age"
    t.integer "Phone"
    t.integer "gender"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
