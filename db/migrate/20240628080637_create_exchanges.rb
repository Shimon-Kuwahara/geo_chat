class CreateExchanges < ActiveRecord::Migration[7.0]
  def change
    create_table :exchanges do |t|
      t.integer :user_id
      t.integer :exchanging_user_id

      t.timestamps
    end
  end
end
