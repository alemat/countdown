json.extract! meeting, :id, :user_id, :directorate_id, :case_team_id, :meeting_type_id, :agenda, :description, :location, :chair_man, :secretary, :start_time, :end_time, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
