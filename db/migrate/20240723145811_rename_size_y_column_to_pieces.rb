class RenameSizeYColumnToPieces < ActiveRecord::Migration[7.0]
  def change
    rename_column :pieces, :size_y, :location_west
  end
end
