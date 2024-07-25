class RenameSizeXColumnToPieces < ActiveRecord::Migration[7.0]
  def change
    rename_column :pieces, :size_x, :location_east
  end
end
