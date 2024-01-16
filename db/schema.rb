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

ActiveRecord::Schema[7.0].define(version: 2024_01_16_120539) do
  create_table "chat_rooms", force: :cascade do |t|
    t.integer "group_chat_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_chat_id"], name: "index_chat_rooms_on_group_chat_id"
  end

  create_table "finishes", force: :cascade do |t|
    t.integer "task_id"
    t.integer "member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "group_chats", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "managers", force: :cascade do |t|
    t.string "uid"
    t.string "pass"
    t.string "gid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "uid"
    t.string "gid"
    t.string "pass"
    t.string "jid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer "chat_room_id", null: false
    t.integer "manager_id"
    t.integer "member_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chat_room_id"], name: "index_messages_on_chat_room_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.string "date"
    t.string "time"
    t.string "job"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "chat_rooms", "group_chats"
  add_foreign_key "messages", "chat_rooms"
end
