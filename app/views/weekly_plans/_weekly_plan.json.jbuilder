json.extract! weekly_plan, :id, :user_id, :plan_title, :created_at, :updated_at
json.url weekly_plan_url(weekly_plan, format: :json)
