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

ActiveRecord::Schema.define(version: 20170720124446) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "show_order"
    t.boolean "visible"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "labels", force: :cascade do |t|
    t.string "name"
    t.integer "show_order"
    t.boolean "visible"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "labels_treatments", id: false, force: :cascade do |t|
    t.bigint "label_id", null: false
    t.bigint "treatment_id", null: false
    t.index ["label_id", "treatment_id"], name: "index_labels_treatments_on_label_id_and_treatment_id"
    t.index ["treatment_id", "label_id"], name: "index_labels_treatments_on_treatment_id_and_label_id"
  end

  create_table "product_features", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "show_order"
    t.boolean "visible"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "product_id"
    t.index ["product_id"], name: "index_product_features_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "show_order"
    t.boolean "visible"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "treatment_items", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "duration"
    t.decimal "price"
    t.integer "show_order"
    t.boolean "visible"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "treatment_id"
    t.index ["treatment_id"], name: "index_treatment_items_on_treatment_id"
  end

  create_table "treatments", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "show_order"
    t.boolean "visible"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "product_id"
    t.bigint "category_id"
    t.index ["category_id"], name: "index_treatments_on_category_id"
    t.index ["product_id"], name: "index_treatments_on_product_id"
  end

  add_foreign_key "product_features", "products"
  add_foreign_key "treatment_items", "treatments"
  add_foreign_key "treatments", "categories"
  add_foreign_key "treatments", "products"
end
