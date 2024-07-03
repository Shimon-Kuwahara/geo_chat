class CreatePieces < ActiveRecord::Migration[7.0]
  def change
    create_table :pieces do |t|
      t.string :name
      t.integer :set_id
      t.integer :location_x
      t.integer :location_y
      t.integer :set_x
      t.integer :set_y
      t.string :image

      t.timestamps
    end
  end
end
