class Meeting < ApplicationRecord
  belongs_to :user
  belongs_to :meeting_type
  has_one :minute

  def to_s
    id

  end


end
