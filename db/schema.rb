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

ActiveRecord::Schema[8.0].define(version: 2025_05_04_133253) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"
  enable_extension "pg_stat_statements"
  enable_extension "pgcrypto"

  create_table "admin_barangays", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.string "status"
    t.uuid "admin_municipality_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_municipality_id"], name: "index_admin_barangays_on_admin_municipality_id"
  end

  create_table "admin_municipalities", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.string "status"
    t.uuid "admin_province_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_province_id"], name: "index_admin_municipalities_on_admin_province_id"
  end

  create_table "admin_provinces", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.string "status"
    t.uuid "admin_region_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_region_id"], name: "index_admin_provinces_on_admin_region_id"
  end

  create_table "admin_regions", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "areas", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "branches", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.string "status"
    t.uuid "cluster_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cluster_id"], name: "index_branches_on_cluster_id"
  end

  create_table "clusters", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.string "status"
    t.uuid "area_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_clusters_on_area_id"
  end

  create_table "companies", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_statuses", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.string "status"
    t.uuid "job_rank_id", null: false
    t.uuid "job_level_id", null: false
    t.uuid "job_title_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_level_id"], name: "index_employee_statuses_on_job_level_id"
    t.index ["job_rank_id"], name: "index_employee_statuses_on_job_rank_id"
    t.index ["job_title_id"], name: "index_employee_statuses_on_job_title_id"
  end

  create_table "job_committees", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_levels", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.string "status"
    t.uuid "job_rank_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_rank_id"], name: "index_job_levels_on_job_rank_id"
  end

  create_table "job_ranks", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.string "status"
    t.uuid "job_committee_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_committee_id"], name: "index_job_ranks_on_job_committee_id"
  end

  create_table "job_titles", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.string "status"
    t.uuid "job_rank_id", null: false
    t.uuid "job_level_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_level_id"], name: "index_job_titles_on_job_level_id"
    t.index ["job_rank_id"], name: "index_job_titles_on_job_rank_id"
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "admin_barangays", "admin_municipalities"
  add_foreign_key "admin_municipalities", "admin_provinces"
  add_foreign_key "admin_provinces", "admin_regions"
  add_foreign_key "branches", "clusters"
  add_foreign_key "clusters", "areas"
  add_foreign_key "employee_statuses", "job_levels"
  add_foreign_key "employee_statuses", "job_ranks"
  add_foreign_key "employee_statuses", "job_titles"
  add_foreign_key "job_levels", "job_ranks"
  add_foreign_key "job_ranks", "job_committees"
  add_foreign_key "job_titles", "job_levels"
  add_foreign_key "job_titles", "job_ranks"
end
