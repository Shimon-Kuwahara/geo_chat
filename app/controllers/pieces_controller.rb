class PiecesController < ApplicationController
  def index
    exchanged_user_id = Exchange.where(created_at: 1.day.ago..Time.current).pluck(:user_id)
    user_id = Match.where(created_at: 1.day.ago..Time.current).where(user_id: current_user.id).where.not(matched_user_id: exchanged_user_id).pluck(:matched_user_id)
    @users = User.where(id: user_id).limit(10)

    @pieces = User.find_by(id: current_user.id).pieces
  end

  def show
    @user = User.find_by(id: params[:id])
    if @user.nil?
      redirect_to root_path, alert: "ユーザーが見つかりません"
    end
    # pieces_id = UserPiece.where(user_id: @user.id).pluck(:piece_id)
    # @pieces = Piece.where(piece_id: pieces_id)
  end
end
