class CreateUserPieces < ActiveRecord::Migration[7.0]
  def change
    create_table :user_pieces do |t|
      t.integer :user_id
      t.integer :piece_id

      t.timestamps
    end
  end
end
