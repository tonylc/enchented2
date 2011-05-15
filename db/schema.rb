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

ActiveRecord::Schema.define(:version => 20110514003148) do

  create_table "domains", :force => true do |t|
    t.integer  "wedding_id"
    t.string   "domain"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state_id"
    t.string   "postal_code"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "page_widgets", :force => true do |t|
    t.integer "page_id"
    t.string  "widget_type"
    t.integer "widget_id"
    t.integer "verticle_order"
  end

  create_table "pages", :force => true do |t|
    t.string  "url_name"
    t.integer "wedding_id"
    t.string  "title"
    t.integer "navigation_order"
    t.boolean "is_locked"
    t.boolean "is_home",          :default => false
  end

  create_table "rsvp_options", :force => true do |t|
    t.integer "rsvp_question_id"
    t.text    "option"
  end

  create_table "rsvp_questions", :force => true do |t|
    t.integer "wedding_id"
    t.integer "html_form_type"
    t.string  "question"
    t.boolean "is_required"
    t.integer "display_order"
  end

  create_table "rsvp_selections", :force => true do |t|
    t.integer "rsvp_id"
    t.integer "rsvp_question_id"
    t.integer "rsvp_option_id"
    t.string  "answer"
  end

  create_table "rsvps", :force => true do |t|
    t.integer  "wedding_id"
    t.string   "name"
    t.boolean  "can_attend"
    t.text     "additional_notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", :force => true do |t|
    t.string   "name"
    t.string   "short_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_auths", :force => true do |t|
    t.integer  "user_id"
    t.integer  "service_id"
    t.string   "login"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "wedding_id"
    t.integer  "role_id"
    t.string   "facebook_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weddings", :force => true do |t|
    t.string   "name"
    t.string   "name_html"
    t.string   "rsvp_message"
    t.datetime "date"
    t.string   "text_announcement_image_url"
    t.integer  "photo_gallery_id"
    t.string   "video_url"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "widget_events", :force => true do |t|
    t.integer  "location_id"
    t.string   "title"
    t.datetime "start_time"
    t.datetime "end_time"
    t.boolean  "is_rsvp_event", :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "widget_texts", :force => true do |t|
    t.string "name"
    t.text   "text"
  end

end
