class RenameSetXColumnToPieces < ActiveRecord::Migration[7.0]
  def change
    rename_column :pieces, :set_x, :size_x
    rename_column :pieces, :set_y, :size_y
  end
end
