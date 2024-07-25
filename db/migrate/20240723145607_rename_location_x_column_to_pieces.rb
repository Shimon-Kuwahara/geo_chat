class RenameLocationXColumnToPieces < ActiveRecord::Migration[7.0]
  def change
    rename_column :pieces, :location_x, :location_north
  end
end
