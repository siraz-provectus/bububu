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

ActiveRecord::Schema.define(version: 2020_04_26_164003) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fabric_requests", force: :cascade do |t|
    t.integer "amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "inventory_stock_sales", force: :cascade do |t|
    t.integer "material_id"
    t.integer "leftover"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["material_id"], name: "index_inventory_stock_sales_on_material_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sale_fabric_requests", force: :cascade do |t|
    t.integer "inventory_stock_sale_id"
    t.integer "fabric_request_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fabric_request_id"], name: "index_sale_fabric_requests_on_fabric_request_id"
    t.index ["inventory_stock_sale_id"], name: "index_sale_fabric_requests_on_inventory_stock_sale_id"
  end

end
