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

ActiveRecord::Schema[7.0].define(version: 2024_03_10_132929) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "type_documents", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_users", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_banks", force: :cascade do |t|
    t.string "number_document", null: false
    t.date "document_issue_date", null: false
    t.date "document_expiration_date", null: false
    t.string "name", null: false
    t.string "phone", null: false
    t.string "second_phone"
    t.bigint "type_document_id"
    t.bigint "type_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", null: false
    t.index ["type_document_id"], name: "index_user_banks_on_type_document_id"
    t.index ["type_user_id"], name: "index_user_banks_on_type_user_id"
  end

  add_foreign_key "user_banks", "type_documents"
  add_foreign_key "user_banks", "type_users"
end
