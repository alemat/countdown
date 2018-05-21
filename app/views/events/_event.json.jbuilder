json.extract! event, :id, :user_id, :title, :description, :event_organizer, :event_location, :contact_person, :email, :phone, :start_time, :end_time, :created_at, :updated_at
json.url event_url(event, format: :json)
