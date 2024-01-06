# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2024_01_06_113135) do

  create_table "case_reports", force: :cascade do |t|
    t.text "pair"
    t.text "tumor_type_final"
    t.text "disease"
    t.text "primary_site"
    t.text "inferred_sex"
    t.float "dlrs"
    t.integer "snv_count"
    t.integer "sv_count"
    t.float "loh_fraction"
    t.float "purity"
    t.float "ploidy"
    t.float "beta"
    t.float "gamma"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["disease"], name: "index_case_reports_on_disease"
    t.index ["inferred_sex"], name: "index_case_reports_on_inferred_sex"
    t.index ["pair"], name: "index_case_reports_on_pair", unique: true
    t.index ["primary_site"], name: "index_case_reports_on_primary_site"
    t.index ["tumor_type_final"], name: "index_case_reports_on_tumor_type_final"
  end

end
