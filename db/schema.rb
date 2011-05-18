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

ActiveRecord::Schema.define(:version => 20110324205638) do

  create_table "pages", :force => true do |t|
    t.string   "title",                           :null => false
    t.string   "slug",                            :null => false
    t.string   "description"
    t.text     "content"
    t.string   "layout"
    t.string   "url"
    t.integer  "views",        :default => 0,     :null => false
    t.boolean  "published",    :default => false, :null => false
    t.datetime "published_at"
    t.integer  "page_id"
    t.boolean  "active",       :default => true,  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
