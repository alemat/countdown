class Meeting < ApplicationRecord
  belongs_to :user
  belongs_to :directorate
  belongs_to :case_team
  belongs_to :meeting_type
  has_one :minute

  def to_s
    id

  end


end
