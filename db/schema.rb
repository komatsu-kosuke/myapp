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

ActiveRecord::Schema.define(version: 2020_02_05_041049) do

  create_table "baggages", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "d_bed"
    t.integer "sd_bed"
    t.integer "s_bed"
    t.integer "sofa_3"
    t.integer "sofa_2"
    t.integer "sofa_1"
    t.integer "syokkidana"
    t.integer "sideboad"
    t.integer "big_tansu"
    t.integer "min_tansu"
    t.integer "isyoucase"
    t.integer "hondana"
    t.integer "big_table"
    t.integer "min_table"
    t.integer "kotatu"
    t.integer "doresser"
    t.integer "big_tv"
    t.integer "min_tv"
    t.integer "conpo"
    t.integer "pc"
    t.integer "syoumei"
    t.integer "sutobu"
    t.integer "big_reizouko"
    t.integer "min_reizouko"
    t.integer "renzi"
    t.integer "kansouki"
    t.integer "big_sentaku"
    t.integer "min_sentaku"
    t.integer "eacon"
    t.integer "huton"
    t.integer "kapetto"
    t.integer "tree"
    t.integer "tyari"
    t.integer "butudan"
    t.integer "bike"
    t.integer "piano"
    t.integer "danboru"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "days", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "year"
    t.integer "month"
    t.string "day"
    t.string "time"
    t.integer "n_people"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "n_zipcode"
    t.string "n_prefecture"
    t.string "n_building"
    t.integer "n_b_floor"
    t.integer "n_floor"
    t.string "n_elevator"
    t.string "n_roadwidth"
    t.string "x_zipcode"
    t.string "x_prefecture"
    t.string "x_building"
    t.integer "x_b_floor"
    t.integer "x_floor"
    t.string "x_elevator"
    t.string "x_roadwidth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
