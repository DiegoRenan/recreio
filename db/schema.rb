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

ActiveRecord::Schema.define(version: 2019_04_09_172145) do

  create_table "busies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "reservado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "checks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "checkin"
    t.datetime "checkout"
    t.integer "days"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contract_models", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contracts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "checkin"
    t.datetime "checkout"
    t.integer "parcelado"
    t.string "status"
    t.integer "day_payment"
    t.decimal "valor", precision: 10
    t.decimal "valor_total", precision: 10
    t.float "desconto"
    t.bigint "contract_models_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contract_models_id"], name: "index_contracts_on_contract_models_id"
  end

  add_foreign_key "contracts", "contract_models", column: "contract_models_id"
end
