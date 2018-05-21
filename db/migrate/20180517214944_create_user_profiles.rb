class CreateUserProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :user_profiles do |t|
      t.references :user, foreign_key: true
      t.string :first_name
      t.string :father_name
      t.string :grand_father_name
      t.string :profession_title
      t.references :directorate, foreign_key: true
      t.string :role
      t.text :cv
      t.binary :upload_picture

      t.timestamps
    end
  end
end
