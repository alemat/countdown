class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :description
      t.string :event_organizer
      t.string :event_location
      t.string :contact_person
      t.string :email
      t.integer :phone
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
