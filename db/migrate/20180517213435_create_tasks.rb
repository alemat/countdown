class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.datetime :due_date
      t.boolean :status
      t.references :weekly_plan, foreign_key: true

      t.timestamps
    end
  end
end
