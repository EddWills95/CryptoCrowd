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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20170823135104) do
=======
ActiveRecord::Schema.define(version: 0) do
>>>>>>> b9bcaa76203696242a7815ba5ffcd7936e2280ca

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

<<<<<<< HEAD
  create_table "comments", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "proposition_id"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["proposition_id"], name: "index_comments_on_proposition_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "currencies", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pledges", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "proposition_id"
    t.float "btc_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["proposition_id"], name: "index_pledges_on_proposition_id"
    t.index ["user_id"], name: "index_pledges_on_user_id"
  end

  create_table "propositions", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "trader_id"
    t.bigint "currency_to_id"
    t.bigint "currency_from_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "expire"
    t.datetime "trade"
    t.float "price_at_trade"
    t.boolean "success"
    t.float "price_at_expire"
    t.string "order_type"
    t.index ["currency_from_id"], name: "index_propositions_on_currency_from_id"
    t.index ["currency_to_id"], name: "index_propositions_on_currency_to_id"
    t.index ["trader_id"], name: "index_propositions_on_trader_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type"
    t.text "bio"
    t.string "favourite_coin"
    t.float "success_rate"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "votes", force: :cascade do |t|
    t.string "votable_type"
    t.bigint "votable_id"
    t.string "voter_type"
    t.bigint "voter_id"
    t.boolean "vote_flag"
    t.string "vote_scope"
    t.integer "vote_weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
    t.index ["votable_type", "votable_id"], name: "index_votes_on_votable_type_and_votable_id"
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"
    t.index ["voter_type", "voter_id"], name: "index_votes_on_voter_type_and_voter_id"
  end

  create_table "wallets", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "btc"
    t.float "ltc"
    t.float "eth"
    t.index ["user_id"], name: "index_wallets_on_user_id"
  end

  add_foreign_key "comments", "propositions"
  add_foreign_key "comments", "users"
=======
>>>>>>> b9bcaa76203696242a7815ba5ffcd7936e2280ca
end
