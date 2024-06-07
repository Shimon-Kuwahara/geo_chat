class UsersController < ApplicationController
  def edit
  
    @user=User.find(params[:id])
  end

  def show
    
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to root_url
  end

  private
  def user_params
    params.require(:user).permit(:profile_image, :name, :academic_year, :hometown, :department, :profile)
  end
end
