json.extract! project, :id, :user_id, :title, :description, :project_owner, :project_implementer, :focal_person, :email, :phone, :start_time, :end_time, :status, :created_at, :updated_at
json.url project_url(project, format: :json)
