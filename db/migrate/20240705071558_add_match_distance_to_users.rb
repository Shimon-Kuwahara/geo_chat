class AddMatchDistanceToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :match_distance, :integer, default: 3, null: false
  end
end
