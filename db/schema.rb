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

ActiveRecord::Schema.define(version: 20141130212031) do

  create_table "admins", force: true do |t|
    t.integer  "employee_id"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["employee_id"], name: "index_admins_on_employee_id"

  create_table "branches", force: true do |t|
    t.string   "address"
    t.integer  "store_manager_id"
    t.integer  "sales_number"
    t.integer  "region_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "branches", ["region_id"], name: "index_branches_on_region_id"
  add_index "branches", ["store_manager_id"], name: "index_branches_on_store_manager_id"

  create_table "business_kinds", force: true do |t|
    t.integer  "customer_id"
    t.string   "category"
    t.decimal  "gross"
    t.decimal  "income"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "business_kinds", ["customer_id"], name: "index_business_kinds_on_customer_id"

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "kind"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "email"
    t.decimal  "salary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "home_kinds", force: true do |t|
    t.integer  "customer_id"
    t.boolean  "marriage"
    t.string   "gender"
    t.integer  "age"
    t.decimal  "income"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "home_kinds", ["customer_id"], name: "index_home_kinds_on_customer_id"

  create_table "orders", force: true do |t|
    t.integer  "product_id"
    t.decimal  "price"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.integer  "stock_amount"
    t.integer  "sale_amount"
    t.decimal  "price"
    t.string   "kind"
    t.string   "image"
    t.string   "description"
    t.decimal  "discount_rate"
    t.decimal  "discount_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "region_managers", force: true do |t|
    t.integer  "employee_id"
    t.integer  "region_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "region_managers", ["employee_id"], name: "index_region_managers_on_employee_id"
  add_index "region_managers", ["region_id"], name: "index_region_managers_on_region_id"

  create_table "regions", force: true do |t|
    t.string   "region_name"
    t.integer  "region_manager_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "regions", ["region_manager_id"], name: "index_regions_on_region_manager_id"

  create_table "sales_people", force: true do |t|
    t.integer  "employee_id"
    t.integer  "branch_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sales_people", ["branch_id"], name: "index_sales_people_on_branch_id"
  add_index "sales_people", ["employee_id"], name: "index_sales_people_on_employee_id"

  create_table "store_managers", force: true do |t|
    t.integer  "employee_id"
    t.integer  "branch_id"
    t.integer  "region_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "store_managers", ["branch_id"], name: "index_store_managers_on_branch_id"
  add_index "store_managers", ["employee_id"], name: "index_store_managers_on_employee_id"
  add_index "store_managers", ["region_id"], name: "index_store_managers_on_region_id"

  create_table "transactions", force: true do |t|
    t.integer  "customer_id"
    t.integer  "product_id"
    t.integer  "sales_person_id"
    t.integer  "quantity"
    t.string   "date"
    t.integer  "branch_id"
    t.string   "paymentmethod"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "transactions", ["branch_id"], name: "index_transactions_on_branch_id"
  add_index "transactions", ["customer_id"], name: "index_transactions_on_customer_id"
  add_index "transactions", ["product_id"], name: "index_transactions_on_product_id"
  add_index "transactions", ["sales_person_id"], name: "index_transactions_on_sales_person_id"

end
