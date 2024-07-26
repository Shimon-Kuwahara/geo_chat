class PiecesController < ApplicationController
  def index
    exchanged_user_id = Exchange.where(user_id: current_user.id,
                                       created_at: 1.day.ago..Time.current).pluck(:exchanging_user_id)
    user_id = Match.where(created_at: 1.day.ago..Time.current).where(user_id: current_user.id).where.not(matched_user_id: exchanged_user_id).pluck(:matched_user_id)
    @users = User.where(id: user_id).limit(10)
    @pieces = User.find_by(id: current_user.id).pieces
  end

  def show
    @user = User.find_by(id: params[:id])
    redirect_to root_path, alert: 'ユーザーが見つかりません' if @user.nil?
    opponent_pieces = User.find_by(id: @user.id).pieces
    my_pieces = User.find_by(id: current_user.id).pieces
    @pieces = opponent_pieces.where.not(id: my_pieces.ids)
  end

  def new
    UserPiece.create(user_id: current_user.id, piece_id: params[:piece_id])
    Exchange.create(user_id: current_user.id, exchanging_user_id: params[:user_id])
    redirect_to pieces_path, data: { turbo: false }
  end
end
