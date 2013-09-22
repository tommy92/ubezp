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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 1) do

  create_table "accounts", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "role"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "klient", :force => true do |t|
    t.string "imie",          :limit => 20, :null => false
    t.text   "nazwisko",                    :null => false
    t.text   "ulica",                       :null => false
    t.text   "numer_domu",                  :null => false
    t.text   "miasto",                      :null => false
    t.string "skladka_raty",  :limit => 15, :null => false
    t.date   "okres_od",                    :null => false
    t.date   "okres_do",                    :null => false
    t.string "rodzaj_ubezp",  :limit => 30, :null => false
    t.string "nr_tel",        :limit => 15, :null => false
    t.string "nazwa_firmy",   :limit => 30, :null => false
    t.string "skladka_cala",  :limit => 30, :null => false
    t.string "skladla_ilosc", :limit => 1,  :null => false
    t.string "rata_1",        :limit => 10, :null => false
    t.string "rata_2",        :limit => 10, :null => false
    t.date   "rata_2_data",                 :null => false
    t.string "rata_3",        :limit => 10, :null => false
    t.date   "rata_3_data",                 :null => false
    t.string "rata_4",        :limit => 10, :null => false
    t.date   "rata_4_data",                 :null => false
    t.string "ilosc_rat",     :limit => 1,  :null => false
    t.string "nr_polisy",     :limit => 50, :null => false
  end

  create_table "users", :force => true do |t|
  end

end
