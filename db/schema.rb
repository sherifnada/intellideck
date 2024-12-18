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

ActiveRecord::Schema[8.0].define(version: 2024_11_12_203311) do
  create_table "card_difficulties", force: :cascade do |t|
    t.integer "flash_card_id", null: false
    t.string "difficulty", default: "needs_practice", null: false
    t.integer "times_reviewed", default: 0, null: false
    t.datetime "last_reviewed_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["difficulty"], name: "index_card_difficulties_on_difficulty"
    t.index ["flash_card_id"], name: "index_card_difficulties_on_flash_card_id"
  end

  create_table "flash_cards", force: :cascade do |t|
    t.string "english_text", null: false
    t.string "pashto_text", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "card_difficulties", "flash_cards"
end
