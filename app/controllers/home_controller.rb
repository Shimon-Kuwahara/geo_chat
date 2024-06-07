class HomeController < ApplicationController
  #before_action :authenticate_user!

  def index
    if logged_in?
      @matches = Match.where(user_id: current_user.user_id)
    end
  end

end
