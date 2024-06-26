class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_current_user, only: [:show, :edit, :update]

  def show
    @user = User.find_by(id: params[:id])
    if @user.nil?
      redirect_to root_path, alert: "ユーザーが見つかりません"
    end
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

  private
    def set_current_user
      @user = current_user
    end

    def user_params
      params.require(:user).permit(:name, :profile_image, :age, :academic_year, :department, :hometown, :profile)
    end
end
