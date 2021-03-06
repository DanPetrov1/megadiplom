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

ActiveRecord::Schema.define(version: 2021_12_28_144531) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role", default: "read", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.date "birthday"
    t.string "birthplace"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.decimal "cost"
    t.bigint "author_id"
    t.bigint "genre_id"
    t.index ["author_id"], name: "index_books_on_author_id"
    t.index ["genre_id"], name: "index_books_on_genre_id"
  end

  create_table "books_orders", id: false, force: :cascade do |t|
    t.bigint "book_id", null: false
    t.bigint "order_id", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.date "birthday"
    t.string "phone"
    t.bigint "post_id"
    t.index ["post_id"], name: "index_employees_on_post_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "title"
    t.text "description"
  end

  create_table "orders", force: :cascade do |t|
    t.date "order_date"
    t.date "shipping_date"
    t.integer "cost"
    t.bigint "payment_method_id"
    t.bigint "pickup_point_id"
    t.bigint "user_id"
    t.index ["payment_method_id"], name: "index_orders_on_payment_method_id"
    t.index ["pickup_point_id"], name: "index_orders_on_pickup_point_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "payment_methods", force: :cascade do |t|
    t.string "title"
  end

  create_table "pickup_points", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.time "busy_hours"
    t.string "phone"
  end

  create_table "posts", force: :cascade do |t|
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "birthday"
    t.string "phone"
    t.string "email"
  end

  add_foreign_key "books", "authors"
  add_foreign_key "books", "genres"
  add_foreign_key "employees", "posts"
  add_foreign_key "orders", "payment_methods"
  add_foreign_key "orders", "pickup_points"
  add_foreign_key "orders", "users"
end
