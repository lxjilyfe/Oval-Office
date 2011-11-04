# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100625090912) do

  create_table "executables", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "source"
    t.string   "flightNo"
    t.string   "dip"
    t.string   "da"
    t.date     "dateIssued"
    t.date     "dateRequiredToClose"
    t.date     "dateClosed"
    t.text     "addition"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "homes", :force => true do |t|
    t.string   "title"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wklysums", :force => true do |t|
    t.date     "dateComposed"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wros", :force => true do |t|
    t.string   "wrono"
    t.string   "title"
    t.date     "dateIssued"
    t.string   "composedBy"
    t.string   "currentStatus"
    t.boolean  "open"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "flightNo"
  end

end
