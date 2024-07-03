class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_current_user, only: %i[show edit update update_location init_location]

  def show
    @user = User.find_by(id: params[:id])
    return unless @user.nil?

    redirect_to root_path, alert: 'ユーザーが見つかりません'
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'プロフィールが更新されました。'
    else
      render :edit
    end
  end

  def update_location
    latitude_new = params[:latitude]
    longitude_new = params[:longitude]
    @user.update(latitude: latitude_new, longitude: longitude_new)
    redirect_to user_path(current_user)
  end

  def init_location
    @user.update(latitude: 0, longitude: 0)
    redirect_to user_path(current_user)
  end

  private

  def set_current_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:name, :profile_image, :age, :academic_year, :department, :hometown, :profile)
  end
end
