# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 2) do

  create_table "previews", :force => true do |t|
    t.string  "title"
    t.text    "description"
    t.integer "position"
    t.string  "content_type"
    t.string  "filename"
    t.integer "size"
    t.integer "project_id"
    t.string  "thumbnail"
    t.integer "width"
    t.integer "height"
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.text     "brief"
    t.string   "client"
    t.string   "contribution"
    t.string   "partner"
    t.integer  "cost"
    t.integer  "days"
    t.integer  "enjoyment"
    t.integer  "permission"
    t.boolean  "visible"
    t.string   "url"
    t.date     "completed_on"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
