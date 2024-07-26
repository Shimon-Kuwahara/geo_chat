class RenameLocationYColumnToPieces < ActiveRecord::Migration[7.0]
  def change
    rename_column :pieces, :location_y, :location_south
  end
end
