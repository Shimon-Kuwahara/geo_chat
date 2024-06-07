Rails.application.routes.draw do
  get 'users/show'
  devise_for :users

  root to: "home#index"
  resources :chats, only: [:show, :create]
  resources :users, only: [:show]
end
