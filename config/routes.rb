Rails.application.routes.draw do
  
  #devise_for :users

  resources :users

  root to: "home#index"
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
end
