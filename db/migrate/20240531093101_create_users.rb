class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :user_id
      t.text :profile
      t.string :profile_image
      t.integer :age
      t.string :academic_year
      t.string :department
      t.string :hometown
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
