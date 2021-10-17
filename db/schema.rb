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

ActiveRecord::Schema.define(version: 2021_10_17_170506) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "general_informations", force: :cascade do |t|
    t.string "title"
    t.text "purpose"
    t.boolean "status", default: true
    t.datetime "last_update"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "keepr_accounts", id: :serial, force: :cascade do |t|
    t.integer "number", null: false
    t.string "ancestry"
    t.string "name", null: false
    t.integer "kind", null: false
    t.integer "keepr_group_id"
    t.string "accountable_type"
    t.integer "accountable_id"
    t.integer "keepr_tax_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "user_id", null: false
    t.index ["accountable_type", "accountable_id"], name: "index_keepr_accounts_on_accountable"
    t.index ["ancestry"], name: "index_keepr_accounts_on_ancestry"
    t.index ["keepr_group_id"], name: "index_keepr_accounts_on_keepr_group_id"
    t.index ["keepr_tax_id"], name: "index_keepr_accounts_on_keepr_tax_id"
    t.index ["number"], name: "index_keepr_accounts_on_number"
    t.index ["user_id"], name: "index_keepr_accounts_on_user_id"
  end

  create_table "keepr_cost_centers", id: :serial, force: :cascade do |t|
    t.string "number", null: false
    t.string "name", null: false
    t.text "note"
  end

  create_table "keepr_groups", id: :serial, force: :cascade do |t|
    t.integer "target", null: false
    t.string "number"
    t.string "name", null: false
    t.boolean "is_result", default: false, null: false
    t.string "ancestry"
    t.bigint "workspace_id"
    t.bigint "user_id", null: false
    t.index ["ancestry"], name: "index_keepr_groups_on_ancestry"
    t.index ["user_id"], name: "index_keepr_groups_on_user_id"
    t.index ["workspace_id"], name: "index_keepr_groups_on_workspace_id"
  end

  create_table "keepr_journals", id: :serial, force: :cascade do |t|
    t.string "number"
    t.date "date", null: false
    t.string "subject"
    t.string "accountable_type"
    t.integer "accountable_id"
    t.text "note"
    t.boolean "permanent", default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["accountable_type", "accountable_id"], name: "index_keepr_journals_on_accountable"
    t.index ["date"], name: "index_keepr_journals_on_date"
  end

  create_table "keepr_postings", id: :serial, force: :cascade do |t|
    t.integer "keepr_account_id", null: false
    t.integer "keepr_journal_id", null: false
    t.decimal "amount", precision: 8, scale: 2, null: false
    t.integer "keepr_cost_center_id"
    t.string "accountable_type"
    t.integer "accountable_id"
    t.index ["accountable_type", "accountable_id"], name: "index_keepr_postings_on_accountable"
    t.index ["keepr_account_id"], name: "index_keepr_postings_on_keepr_account_id"
    t.index ["keepr_cost_center_id"], name: "index_keepr_postings_on_keepr_cost_center_id"
    t.index ["keepr_journal_id"], name: "index_keepr_postings_on_keepr_journal_id"
  end

  create_table "keepr_taxes", id: :serial, force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.decimal "value", precision: 8, scale: 2, null: false
    t.integer "keepr_account_id", null: false
    t.index ["keepr_account_id"], name: "index_keepr_taxes_on_keepr_account_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "first_name"
    t.string "last_name"
    t.string "nickname"
    t.string "image"
    t.string "email"
    t.json "tokens"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["first_name"], name: "index_users_on_first_name"
    t.index ["last_name"], name: "index_users_on_last_name"
    t.index ["nickname"], name: "index_users_on_nickname"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  create_table "workspaces", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "user_id", null: false
    t.boolean "active", default: true, null: false
    t.text "details"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_workspaces_on_name"
    t.index ["user_id"], name: "index_workspaces_on_user_id"
  end

  add_foreign_key "keepr_accounts", "users"
  add_foreign_key "keepr_groups", "users"
  add_foreign_key "workspaces", "users"
end
