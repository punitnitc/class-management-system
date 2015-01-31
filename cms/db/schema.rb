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

ActiveRecord::Schema.define(:version => 5) do

  create_table "students", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "rollno"
    t.string   "course"
    t.string   "branch"
    t.string   "sem"
    t.integer  "year"
    t.string   "email"
    t.integer  "mob"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stusubs", :force => true do |t|
    t.string   "subcode"
    t.string   "rollno"
    t.integer  "absent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", :force => true do |t|
    t.string   "subname"
    t.string   "subcode"
    t.integer  "totalclass"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

# Could not dump table "teachers" because of following StandardError
#   Unknown type 'primary_key' for column 'id'

  create_table "teachsubs", :force => true do |t|
    t.string   "teacher_id"
    t.string   "subcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
