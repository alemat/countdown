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

ActiveRecord::Schema.define(version: 20180517214944) do

  create_table "case_teams", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.text "description"
    t.bigint "directorate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["directorate_id"], name: "index_case_teams_on_directorate_id"
  end

  create_table "directorates", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id"
    t.string "title"
    t.text "description"
    t.string "event_organizer"
    t.string "event_location"
    t.string "contact_person"
    t.string "email"
    t.integer "phone"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "gtp_planners", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meeting_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meetings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id"
    t.bigint "directorate_id"
    t.bigint "case_team_id"
    t.bigint "meeting_type_id"
    t.string "agenda"
    t.text "description"
    t.string "location"
    t.string "chair_man"
    t.string "secretary"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["case_team_id"], name: "index_meetings_on_case_team_id"
    t.index ["directorate_id"], name: "index_meetings_on_directorate_id"
    t.index ["meeting_type_id"], name: "index_meetings_on_meeting_type_id"
    t.index ["user_id"], name: "index_meetings_on_user_id"
  end

  create_table "minutes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "meeting_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meeting_id"], name: "index_minutes_on_meeting_id"
  end

  create_table "projects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id"
    t.string "title"
    t.text "description"
    t.string "project_owner"
    t.string "project_implementer"
    t.string "focal_person"
    t.string "email"
    t.integer "phone"
    t.datetime "start_time"
    t.datetime "end_time"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "sub_gtps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.bigint "gtp_planner_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gtp_planner_id"], name: "index_sub_gtps_on_gtp_planner_id"
  end

  create_table "tasks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "due_date"
    t.boolean "status"
    t.bigint "weekly_plan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["weekly_plan_id"], name: "index_tasks_on_weekly_plan_id"
  end

  create_table "user_profiles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id"
    t.string "first_name"
    t.string "father_name"
    t.string "grand_father_name"
    t.string "profession_title"
    t.bigint "directorate_id"
    t.string "role"
    t.text "cv"
    t.binary "upload_picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["directorate_id"], name: "index_user_profiles_on_directorate_id"
    t.index ["user_id"], name: "index_user_profiles_on_user_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "superadmin_role", default: false
    t.boolean "supervisor_role", default: false
    t.boolean "user_role", default: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "weekly_plans", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id"
    t.string "plan_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_weekly_plans_on_user_id"
  end

  add_foreign_key "case_teams", "directorates"
  add_foreign_key "events", "users"
  add_foreign_key "meetings", "case_teams"
  add_foreign_key "meetings", "directorates"
  add_foreign_key "meetings", "meeting_types"
  add_foreign_key "meetings", "users"
  add_foreign_key "minutes", "meetings"
  add_foreign_key "projects", "users"
  add_foreign_key "sub_gtps", "gtp_planners"
  add_foreign_key "tasks", "weekly_plans"
  add_foreign_key "user_profiles", "directorates"
  add_foreign_key "user_profiles", "users"
  add_foreign_key "weekly_plans", "users"
end
