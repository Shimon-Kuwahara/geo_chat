class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @matches = Match.where(user_id: current_user.id)
  end

end
