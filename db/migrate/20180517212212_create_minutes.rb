class CreateMinutes < ActiveRecord::Migration[5.1]
  def change
    create_table :minutes do |t|
      t.references :meeting, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
