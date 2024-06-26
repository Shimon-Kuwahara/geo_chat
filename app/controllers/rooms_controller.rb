class RoomsController < ApplicationController
  before_action :authenticate_user!

  def show
    if current_user.nil?
      redirect_to new_user_session_path, alert: "You need to sign in or sign up before continuing."
    else
      @rooms = UserRoom.where(user_id: current_user.id) # Adjusted to user_id if necessary
    end
  end
end
