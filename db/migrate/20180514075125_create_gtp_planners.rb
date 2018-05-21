class CreateGtpPlanners < ActiveRecord::Migration[5.1]
  def change
    create_table :gtp_planners do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.text :description

      t.timestamps
    end
  end
end
