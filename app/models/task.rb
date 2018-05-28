class Task < ApplicationRecord
  belongs_to :weekly_plan


  def task_status
    return status == true ? 'Completed' : 'Pending'
  end
end
