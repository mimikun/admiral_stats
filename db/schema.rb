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

ActiveRecord::Schema.define(version: 20180806143756) do

  create_table "admiral_publications", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "admiral_id", null: false
    t.string "name", limit: 32, null: false
    t.string "url_name", limit: 32, null: false
    t.boolean "opens_twitter_nickname", default: false, null: false
    t.boolean "opens_ship_list", default: false, null: false
    t.boolean "opens_equipment_list", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admiral_id"], name: "index_admiral_publications_on_admiral_id", unique: true
    t.index ["url_name"], name: "index_admiral_publications_on_url_name", unique: true
  end

  create_table "admiral_statuses", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "admiral_id", null: false
    t.integer "fuel", null: false
    t.integer "ammo", null: false
    t.integer "steel", null: false
    t.integer "bauxite", null: false
    t.integer "bucket", null: false
    t.integer "level", null: false
    t.integer "room_item_coin", null: false
    t.string "result_point", limit: 32
    t.string "rank", limit: 32
    t.integer "title_id"
    t.integer "strategy_point"
    t.integer "kou_medal"
    t.datetime "exported_at", null: false
    t.index ["admiral_id", "exported_at"], name: "index_admiral_statuses_on_admiral_id_and_exported_at", unique: true
  end

  create_table "admiral_tokens", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "admiral_id", null: false
    t.string "token", null: false
    t.datetime "issued_at", null: false
  end

  create_table "admirals", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "twitter_uid", limit: 32, null: false
    t.string "twitter_nickname", limit: 32, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["twitter_uid"], name: "index_admirals_on_twitter_uid", unique: true
  end

  create_table "api_request_logs", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "admiral_id", null: false
    t.string "request_method", limit: 7, null: false
    t.string "request_uri", null: false
    t.string "user_agent"
    t.integer "status_code", null: false
    t.string "response"
    t.datetime "created_at", null: false
  end

  create_table "blueprint_statuses", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "admiral_id", null: false
    t.integer "book_no", null: false
    t.datetime "expiration_date", null: false
    t.integer "blueprint_num", null: false
    t.datetime "exported_at", null: false
    t.index ["admiral_id", "book_no", "expiration_date", "exported_at"], name: "index_blueprint_statuses", unique: true
  end

  create_table "cop_event_masters", primary_key: "event_no", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "area_id", null: false
    t.string "event_name", limit: 32, null: false
    t.datetime "started_at", null: false
    t.datetime "ended_at", null: false
  end

  create_table "cop_event_progress_statuses", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "admiral_id", null: false
    t.integer "event_no", null: false
    t.integer "numerator", null: false
    t.integer "denominator", null: false
    t.integer "achievement_number", null: false
    t.boolean "area_achievement_claim", default: false, null: false
    t.integer "limited_frame_num", null: false
    t.datetime "exported_at", null: false
    t.index ["admiral_id", "event_no", "exported_at"], name: "index_cop_event_progress_statuses", unique: true
  end

  create_table "equipment_card_timestamps", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "admiral_id", null: false
    t.datetime "exported_at", null: false
    t.index ["admiral_id", "exported_at"], name: "index_equipment_card_timestamps_on_admiral_id_and_exported_at", unique: true
  end

  create_table "equipment_cards", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "admiral_id", null: false
    t.integer "book_no", null: false
    t.datetime "first_exported_at", null: false
    t.index ["admiral_id", "book_no"], name: "index_equipment_cards_on_admiral_id_and_book_no", unique: true
  end

  create_table "equipment_masters", primary_key: "book_no", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "equipment_id"
    t.string "equipment_type", limit: 32, null: false
    t.string "equipment_name", limit: 32, null: false
    t.integer "star_num", null: false
    t.datetime "implemented_at"
  end

  create_table "equipment_statuses", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "admiral_id", null: false
    t.integer "equipment_id", null: false
    t.integer "num", null: false
    t.datetime "exported_at", null: false
    t.index ["admiral_id", "equipment_id", "exported_at"], name: "index_equipment_statuses", unique: true
  end

  create_table "event_masters", primary_key: "event_no", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "area_id", default: 1000, null: false
    t.string "event_name", limit: 32, null: false
    t.integer "no_of_periods", default: 1, null: false
    t.datetime "period1_started_at"
    t.datetime "period2_started_at"
    t.datetime "started_at", null: false
    t.datetime "ended_at", null: false
    t.index ["area_id"], name: "index_event_masters_on_area_id", unique: true
  end

  create_table "event_progress_statuses", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "admiral_id", null: false
    t.integer "event_no", null: false
    t.string "level", limit: 8, null: false
    t.integer "period", default: 0, null: false
    t.boolean "opened", null: false
    t.integer "current_loop_counts", null: false
    t.integer "cleared_loop_counts", null: false
    t.integer "cleared_stage_no", null: false
    t.integer "current_military_gauge_left", null: false
    t.datetime "exported_at", null: false
    t.index ["admiral_id", "event_no", "level", "period", "exported_at"], name: "index_event_progress_statuses", unique: true
  end

  create_table "event_ship_card_ownerships", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "event_no", null: false
    t.integer "book_no", null: false
    t.integer "card_index", null: false
    t.integer "no_of_owners", null: false
    t.integer "no_of_active_users", null: false
    t.datetime "reported_at", null: false
    t.index ["event_no", "book_no", "card_index", "reported_at"], name: "index_event_ship_card_ownerships", unique: true
  end

  create_table "event_stage_masters", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "event_no", null: false
    t.string "level", limit: 32, null: false
    t.integer "period", default: 0, null: false
    t.integer "stage_no", null: false
    t.integer "display_stage_no", default: 0, null: false
    t.string "stage_mission_name", limit: 32, null: false
    t.integer "ene_military_gauge_val", null: false
    t.index ["event_no", "level", "period", "stage_no"], name: "index_event_stage_masters", unique: true
  end

  create_table "ship_card_ownerships", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "book_no", null: false
    t.integer "card_index", null: false
    t.integer "no_of_owners", null: false
    t.integer "no_of_active_users", null: false
    t.integer "def_of_active_users", default: 0, null: false
    t.datetime "reported_at", null: false
    t.index ["book_no", "card_index", "def_of_active_users", "reported_at"], name: "index_ship_card_ownerships", unique: true
  end

  create_table "ship_card_timestamps", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "admiral_id", null: false
    t.datetime "exported_at", null: false
    t.index ["admiral_id", "exported_at"], name: "index_ship_card_timestamps_on_admiral_id_and_exported_at", unique: true
  end

  create_table "ship_cards", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "admiral_id", null: false
    t.integer "book_no", null: false
    t.integer "card_index", null: false
    t.datetime "first_exported_at", null: false
    t.index ["admiral_id", "book_no", "card_index"], name: "index_ship_cards_on_admiral_id_and_book_no_and_card_index", unique: true
  end

  create_table "ship_masters", primary_key: "book_no", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "ship_class", limit: 32, null: false
    t.integer "ship_class_index", null: false
    t.string "ship_type", limit: 32, null: false
    t.string "ship_name", limit: 32, null: false
    t.integer "variation_num", null: false
    t.integer "remodel_level", default: 0, null: false
    t.datetime "implemented_at"
  end

  create_table "ship_slot_statuses", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "ship_status_id", null: false
    t.integer "slot_index", null: false
    t.string "slot_equip_name", limit: 32, null: false
    t.integer "slot_amount", null: false
    t.integer "slot_disp", null: false
    t.index ["ship_status_id", "slot_index"], name: "index_ship_slot_statuses", unique: true
  end

  create_table "ship_statuses", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "admiral_id", null: false
    t.integer "book_no", null: false
    t.integer "remodel_level", null: false
    t.integer "level", null: false
    t.integer "star_num"
    t.integer "exp_percent"
    t.integer "blueprint_total_num"
    t.boolean "married", default: false, null: false
    t.datetime "exported_at", null: false
    t.index ["admiral_id", "book_no", "remodel_level", "exported_at"], name: "index_ship_statuses", unique: true
  end

  create_table "special_ship_masters", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "book_no", null: false
    t.integer "card_index", null: false
    t.integer "remodel_level", default: 0, null: false
    t.integer "rarity", default: 0, null: false
    t.datetime "implemented_at"
    t.index ["book_no", "card_index"], name: "index_special_ship_masters_on_book_no_and_card_index", unique: true
  end

  create_table "updated_ship_masters", primary_key: "book_no", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "ship_class", limit: 32, null: false
    t.integer "ship_class_index", null: false
    t.string "ship_type", limit: 32, null: false
    t.string "ship_name", limit: 32, null: false
    t.integer "variation_num", null: false
    t.integer "remodel_level", default: 0, null: false
    t.datetime "implemented_at", null: false
  end

end
