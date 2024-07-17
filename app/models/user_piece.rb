class UserPiece < ApplicationRecord
    belongs_to :user
    belongs_to :piece
end
