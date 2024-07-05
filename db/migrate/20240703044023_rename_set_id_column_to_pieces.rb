class RenameSetIdColumnToPieces < ActiveRecord::Migration[7.0]
  def change
    rename_column :pieces, :set_id, :piece_set_id
  end
end
