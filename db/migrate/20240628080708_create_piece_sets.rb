class CreatePieceSets < ActiveRecord::Migration[7.0]
  def change
    create_table :piece_sets do |t|
      t.string :name

      t.timestamps
    end
  end
end
