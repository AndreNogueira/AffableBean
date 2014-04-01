# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20131128154922) do

  create_table "categories", force: true do |t|
    t.string   "name",       limit: 45, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customer_orders", force: true do |t|
    t.integer  "confirmation_number",                         null: false
    t.decimal  "amount",              precision: 6, scale: 2, null: false
    t.integer  "customer_id",                                 null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customer_orders", ["confirmation_number"], name: "index_customer_orders_on_confirmation_number", unique: true, using: :btree
  add_index "customer_orders", ["customer_id"], name: "customer_orders_customer_id_fk", using: :btree

  create_table "customers", force: true do |t|
    t.string   "name",        limit: 45, null: false
    t.string   "email",       limit: 45, null: false
    t.string   "phone",       limit: 45, null: false
    t.string   "address",     limit: 45, null: false
    t.string   "city_region", limit: 2,  null: false
    t.string   "cc_number",   limit: 19, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ordered_products", force: true do |t|
    t.integer  "customer_order_id",             null: false
    t.integer  "product_id",                    null: false
    t.integer  "quantity",          default: 1, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ordered_products", ["customer_order_id"], name: "ordered_products_customer_order_id_fk", using: :btree
  add_index "ordered_products", ["product_id"], name: "ordered_products_product_id_fk", using: :btree

  create_table "products", force: true do |t|
    t.string   "name",        limit: 45,                         null: false
    t.decimal  "price",                  precision: 5, scale: 2, null: false
    t.text     "description"
    t.integer  "category_id",                                    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["category_id"], name: "products_category_id_fk", using: :btree

  add_foreign_key "customer_orders", "customers", name: "customer_orders_customer_id_fk"

  add_foreign_key "ordered_products", "customer_orders", name: "ordered_products_customer_order_id_fk"
  add_foreign_key "ordered_products", "products", name: "ordered_products_product_id_fk"

  add_foreign_key "products", "categories", name: "products_category_id_fk"

end
