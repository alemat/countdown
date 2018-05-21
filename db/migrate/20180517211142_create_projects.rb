class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :description
      t.string :project_owner
      t.string :project_implementer
      t.string :focal_person
      t.string :email
      t.integer :phone
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :status

      t.timestamps
    end
  end
end
