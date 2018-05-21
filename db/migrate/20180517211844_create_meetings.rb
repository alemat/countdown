class CreateMeetings < ActiveRecord::Migration[5.1]
  def change
    create_table :meetings do |t|
      t.references :user, foreign_key: true
      t.references :directorate, foreign_key: true
      t.references :case_team, foreign_key: true
      t.references :meeting_type, foreign_key: true
      t.string :agenda
      t.text :description
      t.string :location
      t.string :chair_man
      t.string :secretary
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
