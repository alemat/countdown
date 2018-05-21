class UserProfile < ApplicationRecord
  belongs_to :user
  belongs_to :directorate
end
