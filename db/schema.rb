ActiveRecord::Schema.define(version: 2021_05_30_095942) do

  create_table "photos", force: :cascade do |t|
    t.integer "shop_id", null: false
    t.string "name", null: false
    t.integer "price", null: false
    t.text "description", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["shop_id"], name: "index_photos_on_shop_id"
  end

  create_table "line_photos", force: :cascade do |t|
    t.integer "photo_id", null: false
    t.integer "shop_id", null: false
    t.integer "order_id"
    t.integer "count", default: 0, null: false
    t.boolean "active", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["photo_id"], name: "index_line_photos_on_photo_id"
    t.index ["order_id"], name: "index_line_photos_on_order_id"
    t.index ["shop_id"], name: "index_line_photos_on_shop_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "total_price", default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shops", force: :cascade do |t|
    t.string "name", null: false
    t.integer "fee", default: 0, null: false
    t.integer "time_required", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "photos", "shops"
  add_foreign_key "line_photos", "photos"
  add_foreign_key "line_photos", "orders"
  add_foreign_key "line_photos", "shops"
end
