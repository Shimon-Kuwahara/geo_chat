# frozen_string_literal: true
require 'faker'

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:twitter]

  # You should also create an action method in this controller like this:
  # def twitter
  # end

  # More info at:
  # https://github.com/heartcombo/devise#omniauth

  # GET|POST /resource/auth/twitter
  # def passthru
  #   super
  # end

  # GET|POST /users/auth/twitter/callback
  # def failure
  #   super
  # end

  # protected

  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end


  def twitter
    authorization
  end
  
   def facebook
    authorization
   end
  
   def google_oauth2
    authorization
   end
  
   private
  
   def authorization
    sns_info = User.from_omniauth(request.env["omniauth.auth"])
    # @user と @sns_id を追加
    @user = sns_info[:user]

    if @user.persisted?
      
      sign_in_and_redirect @user, event: :authentication
    else
     
     @sns_id = sns_info[:sns].id
     pass = Devise.friendly_token
     @user.password=pass
     @user.password_confirmation=pass
     @user.email=Faker::Internet.free_email
     @user.save!
     sign_in_and_redirect @user, event: :authentication
     #render template: 'devise/registrations/new'
    end 
   end
end
