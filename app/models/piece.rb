class Piece < ApplicationRecord
    has_many :user_pieces
    has_many :users, through: :user_pieces
    belongs_to :piece_sets
end
