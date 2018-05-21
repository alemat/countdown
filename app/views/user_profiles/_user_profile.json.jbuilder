json.extract! user_profile, :id, :user_id, :first_name, :father_name, :grand_father_name, :profession_title, :directorate_id, :role, :cv, :upload_picture, :created_at, :updated_at
json.url user_profile_url(user_profile, format: :json)
