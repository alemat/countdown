class CreateWeeklyPlans < ActiveRecord::Migration[5.1]
  def change
    create_table :weekly_plans do |t|
      t.references :user, foreign_key: true
      t.string :plan_title

      t.timestamps
    end
  end
end
