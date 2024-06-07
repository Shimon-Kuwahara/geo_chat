Rails.application.routes.draw do
  get 'users/show'
  devise_for :users

  root to: "home#index"
  resources :users, only: [:show]
end
