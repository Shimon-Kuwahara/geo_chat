class ChangeDatatypeLocationNorthOfPieces < ActiveRecord::Migration[7.0]
  def change
    change_column :pieces, :location_north, :decimal, precision: 10, scale: 6
  end
end
