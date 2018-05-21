class CreateSubGtps < ActiveRecord::Migration[5.1]
  def change
    create_table :sub_gtps do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.references :gtp_planner, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
