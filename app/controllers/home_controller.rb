class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @matches = Match.where(user_id: current_user.id)
  end

  def create_matches
    CreateMatchesService.call
    redirect_to root_path, notice: 'Matches were successfully created.'
  end
end
