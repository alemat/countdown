class Directorate < ApplicationRecord
  has_many :case_teams, dependent: :destroy
  
  accepts_nested_attributes_for :case_teams, allow_destroy: true

  def to_s
      name
  end

end
